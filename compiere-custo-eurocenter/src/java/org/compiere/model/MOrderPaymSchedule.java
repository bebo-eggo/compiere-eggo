package org.compiere.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.MOrderPayment;
import com.audaxis.compiere.model.MTypeEcheance;
import com.audaxis.compiere.sync.proxy.MOrderPaymScheduleProxy;
import com.audaxis.compiere.sync.proxy.MOrderProxy;
import com.audaxis.compiere.sync.proxy.MTypeEcheanceProxy;
import com.audaxis.compiere.util.CompiereException;

public class MOrderPaymSchedule extends X_Z_OrderPaymSchedule {

	public MOrderPaymSchedule(Ctx ctx, int Z_OrderPaymSchedule_ID, Trx trx) {
		super(ctx, Z_OrderPaymSchedule_ID, trx);
	}

	public MOrderPaymSchedule(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	public MOrder getParent() {
		return new MOrder(getCtx(), getC_Order_ID(), get_Trx());
	}
	
	public boolean IsForceToInvoice()
	{
		return "Y".equals(get_ValueAsString("IsForceToInvoice"));
	}
	

	public MOrderPayment[] getAllPayms(String whereClause, String orderClause) {

		ArrayList<MOrderPayment> list = new ArrayList<MOrderPayment> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_OrderPayment WHERE Z_OrderPaymSchedule_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getZ_OrderPaymSchedule_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderPayment op = new MOrderPayment(getCtx(), rs, get_Trx());
				list.add(op);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderPayment[] lines = new MOrderPayment[list.size ()];
		list.toArray (lines);
		return lines;

	}
	

	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord new
	 *	@return save
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		BigDecimal retValue = BigDecimal.ZERO;
		MTypeEcheance te = new MTypeEcheance(getCtx(), getZ_TypeEcheance_ID(), get_Trx());
		MOrderPaymScheduleProxy proxy = new MOrderPaymScheduleProxy(this);
		if (te != null && te.isUnique() && newRecord) {
			int echLivID = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule WHERE c_Order_ID = ? AND Z_TypeEcheance_ID = ?  ", getC_Order_ID(), getZ_TypeEcheance_ID());
			if (echLivID > 0){
				log.saveError("ERREUR", "Echéance Unique déja existante");
				return false;
			}

			if (te.isLivraison()  ){
				retValue = DB.getSQLValueBD(get_Trx(), " select sum(totalamt) from Z_OrderPaymSchedule where C_Order_ID = ? AND Z_OrderPaymSchedule_ID <>  " +  getZ_OrderPaymSchedule_ID()  + " AND Z_TypeEcheance_ID NOT IN ( SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID()+")  ", getC_Order_ID() );
				if (retValue != null){
					BigDecimal remid = this.getParent().getGrandTotal().subtract(retValue).setScale(2, RoundingMode.HALF_UP);
					this.setTotalAmt(remid);
					DB.executeUpdate("update Z_OrderPaymSchedule set totalamt = 0 where C_Order_ID = ? AND Z_TypeEcheance_ID  IN ( SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID()+")   ", getC_Order_ID(),get_Trx());

				}
			}

			if ( te.isAjust() ){
				retValue = DB.getSQLValueBD(get_Trx(), " select sum(totalamt) from Z_OrderPaymSchedule where C_Order_ID = ? AND Z_OrderPaymSchedule_ID <>  " +  getZ_OrderPaymSchedule_ID()  , getC_Order_ID() );
				if (retValue != null){
					BigDecimal remid = this.getParent().getGrandTotal().subtract(retValue).setScale(2, RoundingMode.HALF_UP);
					this.setTotalAmt(remid);
				}
			}


		} else
		{	
			if (te != null && te.isUnique() && ! newRecord && te.isAjust()) {
				retValue = DB.getSQLValueBD(get_Trx(), " select sum(totalamt) from Z_OrderPaymSchedule where C_Order_ID = ? "  , getC_Order_ID() );
				if (retValue != null){
					BigDecimal remid = this.getParent().getGrandTotal().subtract(retValue).setScale(2, RoundingMode.HALF_UP);
					this.setTotalAmt(this.getTotalAmt().add(remid));
				}
			}
		}

		//Si No lignes existe prendre le max(line)+10
		int idxExists = DB.getSQLValue(get_Trx(), "select MAX(z_orderpaymschedule_ID) from z_orderpaymschedule " +
				"where C_Order_ID = ? and SeqNo= "+getSeqNo(),this.getC_Order_ID());
		if(idxExists<=0)
			setSeqNo(getSeqNo());
		else {
		int noSeq = 10;
		if(idxExists>0)
			noSeq = DB.getSQLValue(get_Trx(), "select NVL(max(SeqNo),0) from z_orderpaymschedule where C_Order_ID = ? ",this.getC_Order_ID());
		if(noSeq!=0)
			setSeqNo(noSeq+=10);
		}
		MTypeEcheanceProxy tep = new MTypeEcheanceProxy(te);
		if(tep.IsProm() && proxy.getPROM_BPartner_ID()<=0)
		{
			MOrder mo = new MOrder(getCtx(), this.getC_Order_ID(), get_Trx());
			MOrderProxy proxyX=new MOrderProxy(mo);
			if(proxyX.getPROM_BPartner_ID()>0)
			{
				int promlocationid=DB.getSQLValue(get_Trx(), "SELECT MAX(C_BPartner_Location_ID) FROM C_BPartner_Location WHERE C_BPartner_ID=? AND IsEGGO = 'Y' AND isBillTo='Y'",proxyX.getPROM_BPartner_ID());
				if(promlocationid>0)
					proxy.setPROM_BPartner_Location_ID(promlocationid);
				proxy.setPROM_BPartner_ID(proxyX.getPROM_BPartner_ID());
			}
		}
		return true;
	}	//	beforeSave


	
	/**************************************************************************
	 * 	After Save
	 *	@param newRecord new
	 *	@return save
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean succes)
	{
		BigDecimal retValue = BigDecimal.ZERO;
		if (getC_Invoice_ID() <= 0 ){
			
			int echLivID = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule WHERE c_Order_ID = ? AND Z_TypeEcheance_ID in (SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsLivraison = 'Y' and AD_Client_ID = "+getAD_Client_ID()+") ", getC_Order_ID());

			// Create Ajustement if Livraison was not found !
			
			if (echLivID <= 0) echLivID = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule WHERE c_Order_ID = ? AND Z_TypeEcheance_ID in (SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID()+" ) ", getC_Order_ID());
			
			if (echLivID == this.get_ID()) return true;
			
			int noSeq = DB.getSQLValue(get_Trx(), "select NVL(max(SeqNo),0) from z_orderpaymschedule where C_Order_ID = ? and Z_TYPEECHEANCE_ID in (Select Z_TYPEECHEANCE_ID from Z_TYPEECHEANCE where IsAjust = 'Y' and AD_Client_ID = "+this.getAD_Client_ID()+")", getC_Order_ID());
			if(noSeq==0)
				noSeq = 99;
			else
				if(noSeq == 99)
					noSeq=991;
				else
					noSeq+=1;
			
			if (echLivID <= 0){
				MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
				ops.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				ops.setC_Order_ID(getC_Order_ID());
				ops.setSeqNo(noSeq);
				int ajID = DB.getSQLValue(null, "SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsLivraison = 'N' and IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID());
				ops.setZ_TypeEcheance_ID(ajID);
				ops.set_Value("DueDate", get_Value("DueDate"));
				ops.save(get_Trx());
				echLivID = ops.get_ID();
			}
			// END Create Ajustement if Livraison was not found !
			
			if (echLivID > 0){
				MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), echLivID, get_Trx());
				if (ops.getC_Invoice_ID() < 1 && echLivID != this.get_ID()){
					retValue = DB.getSQLValueBD(get_Trx(), " select sum(totalamt) from Z_OrderPaymSchedule where C_Order_ID = ? AND Z_OrderPaymSchedule_ID <>  " + echLivID , getC_Order_ID() );
					BigDecimal remid = this.getParent().getGrandTotal().subtract(retValue).setScale(2, RoundingMode.HALF_UP);
					if (remid != null ){
						Object[] params = {remid,echLivID };
						DB.executeUpdate("update Z_OrderPaymSchedule set totalamt = ? where Z_OrderPaymSchedule_id = ? ", params, get_Trx());
					}
				}
			}
		}
		//Si il existe une facture sur la réajustement, en créer une nouvelle à 0 !
		int ajID = DB.getSQLValue(null, "SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsLivraison = 'N' and IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID());
		if(getC_Invoice_ID()>0 && getZ_TypeEcheance_ID() == ajID)
		{
			int noSeq = DB.getSQLValue(get_Trx(), "select NVL(max(SeqNo),0) from z_orderpaymschedule where C_Order_ID = ? and Z_TYPEECHEANCE_ID in (Select Z_TYPEECHEANCE_ID from Z_TYPEECHEANCE where IsAjust = 'Y' and AD_Client_ID = "+this.getAD_Client_ID()+")", getC_Order_ID());
			if(noSeq==0)
				noSeq = 99;
			else
				if(noSeq == 99)
					noSeq=991;
				else
					noSeq+=1;
			//Il faut toujours une ech adjust sans facture !
			Object[]params = {getC_Order_ID(),ajID};
			int idECH =  DB.getSQLValue(get_Trx(), "select  max(Z_OrderPaymSchedule_ID) from Z_OrderPaymSchedule where C_Order_ID = ? AND C_Invoice_ID is null AND Z_TypeEcheance_ID = ?  ",params );
			if(idECH<=0)
			{
				MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
				ops.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				ops.setC_Order_ID(getC_Order_ID());
				ops.setSeqNo(noSeq);
				ops.setZ_TypeEcheance_ID(ajID);
				ops.set_Value("DueDate", get_Value("DueDate"));
				ops.setTotalAmt(Env.ZERO);
				ops.save(get_Trx());
			}
		}
		MOrderPaymScheduleProxy proxy = new MOrderPaymScheduleProxy(this);
		MOrder mo = new MOrder(getCtx(), this.getC_Order_ID(), get_Trx());
		mo.setTotalPaySched();
		
		if(proxy.getPROM_BPartner_ID()!=0)
		{
				mo.setPROMBPartner_ID(proxy.getPROM_BPartner_ID());
		}
		mo.save();
		
		return true;
}
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete ()
	{
		//	log.saveError("Error", Msg.getMsg(getCtx(), "CannotDelete"));
		
		
		BigDecimal retValue = BigDecimal.ZERO;
		if (this.getC_Invoice_ID() <= 0 ){
			
			int echLivID = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule WHERE c_Order_ID = ? AND Z_TypeEcheance_ID in (SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsLivraison = 'Y' and AD_Client_ID = "+getAD_Client_ID()+") ", this.getC_Order_ID());

			// Create Ajustement if Livraison was not found !
			boolean forceCreateAjust = (echLivID == this.get_ID());
			if (echLivID <= 0) echLivID = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule WHERE c_Order_ID = ? AND Z_TypeEcheance_ID in (SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID()+") ", this.getC_Order_ID());
			
			if (echLivID <= 0 || forceCreateAjust){
				MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
				ops.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				ops.setC_Order_ID(getC_Order_ID());
				ops.setSeqNo(99);
				int ajID = DB.getSQLValue(null, "SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID());
				ops.setZ_TypeEcheance_ID(ajID);
				ops.set_Value("DueDate", get_Value("DueDate"));
				ops.save(get_Trx());
				echLivID = ops.get_ID();
			}
			// END Create Ajustement if Livraison was not found !

			
			
			if (echLivID > 0){
				MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), echLivID, get_Trx());
				if (ops.getC_Invoice_ID() < 1 && echLivID != this.get_ID()){
					retValue = DB.getSQLValueBD(get_Trx(), " select nvl(sum(totalamt),0) from Z_OrderPaymSchedule where C_Order_ID = ? AND Z_OrderPaymSchedule_ID <>  " + echLivID , this.getC_Order_ID() );
					retValue = retValue.subtract(this.getTotalAmt());
					BigDecimal remid = this.getParent().getGrandTotal().subtract(retValue).setScale(2, RoundingMode.HALF_UP);
					if (remid != null ){
						Object[] params = {remid,echLivID };
						DB.executeUpdate("update Z_OrderPaymSchedule set totalamt = ? where Z_OrderPaymSchedule_id = ? ", params, get_Trx());
					}
				}
			}
		}
		else {
			throw new CompiereException(" Supression Interdite ! Déja Facturé !");
		}	

		return true;
	} 	//	beforeDelete

	
	
	
	public MOrderPaymScheduleLine[] getLines(String whereClause, String orderClause) {

		ArrayList<MOrderPaymScheduleLine> list = new ArrayList<MOrderPaymScheduleLine> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_OrderPaymScheduleLine WHERE Z_OrderPaymSchedule_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getZ_OrderPaymSchedule_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderPaymScheduleLine psol = new MOrderPaymScheduleLine(getCtx(), rs, get_Trx());
				list.add(psol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderPaymScheduleLine[] lines = new MOrderPaymScheduleLine[list.size ()];
		list.toArray (lines);
		return lines;

	}
	
	

	
	
	

}
