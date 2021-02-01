package com.audaxis.compiere.sync.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;

import org.compiere.model.MOrg;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.NullParameter;
import org.compiere.util.Trx;

import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.model.MSyncDatabase;

/**
 * Synchronization UP.  Des magasins vers la centrale.
 * 
 * @author bbr
 *
 */
public class SyncUpProcess extends SvrProcessExtended {

	private int nbOrderImported=0;
	private int nbChatImported=0;
	private int nbOrderLineImported=0;
	private int nbOrderLineActionImported=0;
	private int nbOrderPaymentImported=0;
	private int nbOrderPartnerImported=0;
	private int nbOrderMesagesImported=0;
	private int nbTrxMsgImported=0;
	private int totOrderImported=0;
	private int totChatImported=0;
	private int totOrderLineImported=0;
	private int totOrderLineActionImported=0;
	private int totOrderPaymentImported=0;
	private int totOrderPartnerImported=0;
	private int totOrderMesagesImported=0;
	private int totnbTrxMsgImported=0;
	private int ad_org_id;
	
	@Override
	protected void prepare() {
		// Check Process Running
//		int processID = getProcessInfo().getAD_Process_ID();
//		int no = DB.getSQLValue(get_Trx(), "select count(*) from AD_PINSTANCE where ISPROCESSING = 'Y' and AD_Process_ID = ? " , processID );
//		if (no > 1 ){
//			log.info("Process Already Running ! " );
//			throw new CompiereException("Process Already Running ! " );
//		}
		 ProcessInfoParameter[] para = getParameter();

	        for (int i = 0; i < para.length; i++)
	        {
	            String name = para[i].getParameterName();

	            if (para[i].getParameter() == null)
	            {
	                ;
	            }
	            else if (name.equals("AD_Org_ID"))
	            {
	            	ad_org_id = para[i].getParameterAsInt();
	            }
	        }
	}

	@Override
	protected String doIt() throws Exception {
		Timestamp startingTime = new Timestamp(new Date().getTime());
		MOrg org = null;
		if(ad_org_id != 0)
			org = new MOrg(getCtx(), ad_org_id, get_Trx());
		MSyncDatabase[] dbs = MSyncDatabase.getAllDatabases(org==null?null:org.getName(),getCtx());
//		MSyncDatabase[] dbs = MSyncDatabase.getAllDatabases(getCtx());
		for (int i = 0; i < dbs.length; i++) {
			MSyncDatabase db = dbs[i];
			Trx trx = Trx.get(db.getDatabaseLinkName());
			if(DB.getSQLValue(trx, "select 1 from dual@"+db.getDatabaseLinkName()) > 0){
				sync(db,trx);
				db.setLastSynchronizationUP(startingTime);
				db.save();
				trx.commit();
			}else
				log.info("Database :"+db.getDatabaseLinkName()+" DOWN !!!");
			trx.close();
			trx = null;
		}
		log.warning("Sync UP DONE");
		log.warning(totOrderImported+" commande(s) synchronisée(s) - "+totOrderLineImported+" ligne(s) de commande synchronisée(s) - "+
				totOrderLineActionImported+" action(s) de ligne de commande synchronisée(s) - "+totOrderPaymentImported+" paiement(s) synchronisée(s) - "+
				totOrderPartnerImported+" client(s) synchronisée(s) - "+totOrderMesagesImported+" message(s) synchronisé(s)- "+totChatImported+" chat(s) synchronisé(s)");
		return totOrderImported+" commande(s) synchronisée(s) - "+totOrderLineImported+" ligne(s) de commande synchronisée(s) - "+
				totOrderLineActionImported+" action(s) de ligne de commande synchronisée(s) - "+totOrderPaymentImported+" paiement(s) synchronisée(s) - "+
				totOrderPartnerImported+" client(s) synchronisée(s) - "+totOrderMesagesImported+" message(s) synchronisé(s)- "+totChatImported+" chat(s) synchronisé(s) - "+
				totnbTrxMsgImported+" livraison(s) synchronisé(s)";
	}

	private void sync(MSyncDatabase db,Trx trx) throws Exception{
		log.info("Sync UP for database '"+ db.getName()+"'+\n-----------------------------------");
		nbOrderImported=0;
		nbOrderLineImported=0;
		nbOrderLineActionImported=0;
		nbOrderPaymentImported=0;
		nbOrderPartnerImported=0;
		nbOrderMesagesImported=0;
		nbChatImported=0;
		synchronizeIPosOrder(db,trx);
		synchronizeIPosChat(db,trx);
		synchronizeITrxMsg(db,trx);
		log.info(nbOrderImported+" commande(s) synchronisée(s) - "+nbOrderLineImported+" ligne(s) de commande synchronisée(s) - "+
				nbOrderLineActionImported+" action(s) de ligne de commande synchronisée(s) - "+nbOrderPaymentImported+" paiement(s) synchronisée(s) - "+
				nbOrderPartnerImported+" client(s) synchronisée(s) - "+nbOrderMesagesImported+" message(s) synchronisé(s) - "+nbChatImported+" chat(s) synchronisé(s) - "+
				nbTrxMsgImported+" livraison(s) synchronisé(s)");
		totOrderImported+=nbOrderImported;
		totChatImported+=nbChatImported;
		totOrderLineImported+=nbOrderLineImported;
		totOrderLineActionImported+=nbOrderLineActionImported;
		totOrderPaymentImported+=nbOrderPaymentImported;
		totOrderPartnerImported+=nbOrderPartnerImported;
		totOrderMesagesImported+=nbOrderMesagesImported;
		totnbTrxMsgImported+=nbTrxMsgImported;
	}
	
	
	private void synchronizeIPosOrder(MSyncDatabase db,Trx trx) throws SQLException{
		int i_POSOrder_ID = 0;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
					sql	.append("select * from i_PosOrder@").append(db.getDatabaseLinkName()).append(" where isExported ='N' and I_PosOrder_id not in(select i_posorder_id from Z_LockPos@").append(db.getDatabaseLinkName()).append(") order by i_posorder_id");
		StringBuffer sql2 = new StringBuffer();
					sql2	.append("Insert into I_POSORDER (AD_CLIENT_ID,AD_ORG_ID,C_BPARTNER_ID,C_DOCTYPETARGET_ID,C_ORDER_ID,CREATEDBY,")
							.append("DATEORDERED,DOCUMENTNO,GRANDTOTAL,I_ERRORMSG,I_ISIMPORTED,I_POSORDER_ID,ISACTIVE,PROCESSED,PROCESSING,SALESREP_ID,")
							.append("UPDATEDBY,Z_POSNBR,PRIORITY,C_BPARTNER_LOCATION_ID,SAV_STATUS,isExported,dateExported,I_ISPARTNERMODIFIED,VENDOR_ID,Z_Warranty,I_PosOrderPartner_ID,Z_ORIGORDER,Z_TotPayment,Z_GrandTotal,Z_AD_Org_ID) ")
							.append("values ")
							.append("(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		StringBuffer sql3 = new StringBuffer();
					sql3	.append("UPDATE I_POSORDER@").append(db.getDatabaseLinkName()).append(" SET isExported='Y',dateExported=Sysdate ")
							.append("WHERE i_posorder_id = ? ");
		try {
			stmt = DB.prepareStatement(sql.toString(),trx);
			rs = stmt.executeQuery();
			while(rs.next()){
				i_POSOrder_ID=rs.getInt("I_POSORDER_ID");
				String documentNo = null;
				ArrayList<Object> params = new ArrayList<Object>();
					params.add(getParam(rs.getInt("AD_CLIENT_ID"),false));
					params.add(getParam(rs.getInt("AD_ORG_ID"),false));
					params.add(getParam(rs.getInt("C_BPARTNER_ID"),false));
					params.add(getParam(rs.getInt("C_DOCTYPETARGET_ID"),false));
					params.add(getParam(rs.getInt("C_ORDER_ID"),false));
					params.add(getParam(rs.getInt("CREATEDBY"),false));
					params.add(getParam(rs.getTimestamp("DATEORDERED")));
					documentNo=rs.getString("DOCUMENTNO");
					params.add(getParam(documentNo));
					params.add(getParam(rs.getBigDecimal("GRANDTOTAL")));
					params.add(getParam(rs.getString("I_ERRORMSG")));
					params.add(getParam(rs.getString("I_ISIMPORTED")));
					params.add(getParam(rs.getInt("I_POSORDER_ID"),false));
					params.add(getParam(rs.getString("ISACTIVE")));
					params.add(getParam(rs.getString("PROCESSED")));
					params.add(getParam(rs.getString("PROCESSING")));
					params.add(getParam(rs.getInt("SALESREP_ID"),false));
					params.add(getParam(rs.getInt("UPDATEDBY"),false));
					params.add(getParam(rs.getString("Z_POSNBR")));
					params.add(getParam(rs.getInt("PRIORITY"),false));
					params.add(getParam(rs.getInt("C_BPARTNER_LOCATION_ID"),false));
					params.add(getParam(rs.getString("SAV_STATUS")));
					params.add(getParam(rs.getString("isExported")));
					params.add(getParam(rs.getTimestamp("dateExported")));
					params.add(getParam(rs.getString("I_ISPARTNERMODIFIED")));
					params.add(getParam(rs.getInt("VENDOR_ID"),false));
					params.add(getParam(rs.getString("Z_Warranty")));
					params.add(getParam(rs.getInt("I_PosOrderPartner_ID"),false));
					params.add(getParam(rs.getString("Z_ORIGORDER")));
					params.add(getParam(rs.getBigDecimal("Z_TotPayment")));
					params.add(getParam(rs.getBigDecimal("Z_GrandTotal")));
					params.add(getParam(rs.getInt("Z_AD_Org_ID"),false));
				DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);

				synchronizeIPosOrderLine(i_POSOrder_ID,db,trx);
				synchronizeIPosPayment(i_POSOrder_ID,db,trx);
				synchronizeIPosPartner(i_POSOrder_ID,db,trx);
				synchronizeIPosMessage(i_POSOrder_ID,db,trx);
				DB.executeUpdate(sql3.toString(),rs.getInt("I_POSORDER_ID"),trx);
				nbOrderImported++;
			}
		}catch (Exception e) {
			throw new SQLException(e.getMessage());
		}
		finally{
			try {
				if(stmt != null)
					stmt.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				throw new SQLException(e.getMessage());
			}
		}
	}
	
	private void synchronizeIPosChat(MSyncDatabase db,Trx trx) throws SQLException{
		int i_POSChat_ID = 0;
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		StringBuffer sql = new StringBuffer();
					sql	.append("select * from i_PosChat@").append(db.getDatabaseLinkName()).append(" where isExported ='N'");
		StringBuffer sql2 = new StringBuffer();
					sql2	.append("Insert into I_POSCHAT (AD_CLIENT_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,DOCUMENTNO,I_ERRORMSG,ISACTIVE,PROCESSED,isExported,Characterdata,I_PosChat_ID) ")
							.append("values ")
							.append("(?,?,sysdate,?,sysdate,?,?,?,?,?,?,?,?)");
		StringBuffer sql3 = new StringBuffer();
					sql3	.append("UPDATE I_POSCHAT@").append(db.getDatabaseLinkName()).append(" SET isExported='Y' ")
							.append("WHERE I_POSCHAT_ID = ? ");
		try {
			stmt = DB.prepareStatement(sql.toString(),trx);
			rs = stmt.executeQuery();
			while(rs.next()){
				i_POSChat_ID=rs.getInt("I_POSCHAT_ID");
				String documentNo = null;
				ArrayList<Object> params = new ArrayList<Object>();
					params.add(getParam(rs.getInt("AD_CLIENT_ID"),false));
					params.add(getParam(rs.getInt("AD_ORG_ID"),false));
					params.add(getParam(rs.getInt("CREATEDBY"),false));
					params.add(getParam(rs.getInt("UPDATEDBY"),false));
					documentNo=rs.getString("DOCUMENTNO");
					params.add(getParam(documentNo));
					params.add(getParam(rs.getString("I_ERRORMSG")));
					params.add(getParam(rs.getString("ISACTIVE")));
					params.add(getParam(rs.getString("PROCESSED")));
					params.add(getParam(rs.getString("isExported")));
					params.add(getParam(rs.getString("Characterdata")));
					params.add(getParam(rs.getInt("I_PosChat_ID"),false));
				DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
				DB.executeUpdate(sql3.toString(),i_POSChat_ID,trx);
				nbChatImported++;
			}
		}catch (Exception e) {
			throw new SQLException(e.getMessage());
		}
		finally{
			try {
				if(stmt != null)
					stmt.close();
				if(stmt2 != null)
					stmt2.close();
				if(rs != null)
					rs.close();
				if(rs2 != null)
					rs2.close();
			} catch (SQLException e) {
				throw new SQLException(e.getMessage());
			}
		}
	}
	
	private void synchronizeITrxMsg(MSyncDatabase db,Trx trx) throws SQLException{
		int i_trxMsg_ID = 0;
		PreparedStatement stmt = null;
		PreparedStatement stmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		StringBuffer sql = new StringBuffer();
		sql	.append("select * from i_TrxMsg where isExported ='N'");
		StringBuffer sql2 = new StringBuffer();
		sql2	.append("Insert into i_TrxMsg@").append(db.getDatabaseLinkName()).append(" (AD_CLIENT_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,I_TRXMSG_ID,C_ORDERLINE_ID,I_POSORDERLINE_ID,Z_POSWFACTION_ID,Z_POSWFACTIVITY_ID,QTYDELIVERED,ISEXPORTED,I_ISIMPORTED) ")
		.append("values ")
		.append("(?,?,sysdate,?,sysdate,?,?,?,?,?,?,?,?,?,?)");
		StringBuffer sql3 = new StringBuffer();
		sql3	.append("UPDATE i_TrxMsg SET isExported='Y' ")
		.append("WHERE i_TrxMsg_ID = ? ");
		try {
			stmt = DB.prepareStatement(sql.toString(),trx);
			rs = stmt.executeQuery();
			while(rs.next()){
				i_trxMsg_ID=rs.getInt("i_TrxMsg_ID");
				ArrayList<Object> params = new ArrayList<Object>();
				params.add(getParam(rs.getInt("AD_CLIENT_ID"),false));
				params.add(getParam(rs.getInt("AD_ORG_ID"),false));
				params.add(getParam(rs.getInt("CREATEdbY"),false));
				params.add(getParam(rs.getInt("UPDATEdbY"),false));
				params.add(getParam(rs.getString("ISACTIVE")));
				params.add(getParam(rs.getInt("I_TRXMSG_ID"),false));
				params.add(getParam(rs.getInt("C_ORDERLINE_ID"),false));
				params.add(getParam(rs.getInt("I_POSORDERLINE_ID"),false));
				params.add(getParam(rs.getInt("Z_POSWFACTION_ID"),false));
				params.add(getParam(rs.getInt("Z_POSWFACTIVITY_ID"),false));
				params.add(getParam(rs.getBigDecimal("QTYDELIVERED")));
				params.add(getParam(rs.getString("ISEXPORTED")));
				params.add(getParam(rs.getString("I_ISIMPORTED")));
				DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
				DB.executeUpdate(sql3.toString(),i_trxMsg_ID,trx);
				nbTrxMsgImported++;
			}
		}catch (Exception e) {
			throw new SQLException(e.getMessage());
		}
		finally{
			try {
				if(stmt != null)
					stmt.close();
				if(stmt2 != null)
					stmt2.close();
				if(rs != null)
					rs.close();
				if(rs2 != null)
					rs2.close();
			} catch (SQLException e) {
				throw new SQLException(e.getMessage());
			}
		}
	}
	
	private void synchronizeIPosOrderLine(int i_POSOrder_ID,MSyncDatabase db,Trx trx) throws SQLException{
		PreparedStatement stmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
				sql	.append("select * from i_PosOrderLine@").append(db.getDatabaseLinkName()).append(" where I_POSORDER_ID= ?");
		StringBuffer sql2 = new StringBuffer();
				sql2	.append("Insert into I_POSORDERLINE (AD_CLIENT_ID,AD_ORG_ID,C_ORDERLINE_ID,CREATEDBY,I_POSORDER_ID,I_POSORDERLINE_ID,ISACTIVE,M_PRODUCT_ID,PRICEENTERED,PRICELIST,")
						.append("QTYENTERED,UPDATEDBY,Z_POSNBR,Z_SERNO,LINE,DESCRIPTION,Z_REFERENCEART,Z_PRODDESCRIPTION,M_PRODUCT_CATEGORY_ID,Z_S_FAMILLE_ID,Z_S_S_FAMILLE_ID,Z_S_S_S_FAMILLE_ID,")
						.append("FOURNISSEUR,Y_MARQUE_ID,PRODUCT_PRICE,DISCOUNT,MARQUETXT,M_PRODUCTSTATE,ACCESSORIES,PURCHASEDATE,C_TAX_ID,IEMI) ")
						.append("values ")
						.append("(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");						
		try {
			stmt = DB.prepareStatement(sql.toString(),trx);
				stmt.setInt(1,i_POSOrder_ID);
			rs = stmt.executeQuery();
			while(rs.next()){
				ArrayList<Object> params = new ArrayList<Object>();
					params.add(getParam(rs.getInt("AD_CLIENT_ID"),false));
					params.add(getParam(rs.getInt("AD_ORG_ID"),false));
					params.add(getParam(rs.getInt("C_ORDERLINE_ID"),false));
					params.add(getParam(rs.getInt("CREATEDBY"),false));
			
					params.add(getParam(rs.getInt("I_POSORDER_ID"),false));
					params.add(getParam(rs.getInt("I_POSORDERLINE_ID"),false));
					params.add(getParam(rs.getString("ISACTIVE")));
					params.add(getParam(rs.getInt("M_PRODUCT_ID"),false));
					params.add(getParam(rs.getBigDecimal("PRICEENTERED")));
					params.add(getParam(rs.getBigDecimal("PRICELIST")));
			
					params.add(getParam(rs.getBigDecimal("QTYENTERED")));
					params.add(getParam(rs.getInt("UPDATEDBY"),false));
					params.add(getParam(rs.getString("Z_POSNBR")));
					params.add(getParam(rs.getString("Z_SERNO")));
					params.add(getParam(rs.getInt("LINE"),false));
					params.add(getParam(rs.getString("DESCRIPTION")));
					params.add(getParam(rs.getString("Z_REFERENCEART")));
					params.add(getParam(rs.getString("Z_PRODDESCRIPTION")));
					params.add(getParam(rs.getInt("M_PRODUCT_CATEGORY_ID"),true));
					params.add(getParam(rs.getInt("Z_S_FAMILLE_ID"),true));
					params.add(getParam(rs.getInt("Z_S_S_FAMILLE_ID"),true));
					params.add(getParam(rs.getInt("Z_S_S_S_FAMILLE_ID"),true));
					params.add(getParam(rs.getString("FOURNISSEUR")));
					params.add(getParam(rs.getInt("Y_MARQUE_ID"),true));
					params.add(getParam(rs.getBigDecimal("PRODUCT_PRICE")));
					params.add(getParam(rs.getBigDecimal("DISCOUNT")));
					params.add(getParam(rs.getString("MARQUETXT")));
					params.add(getParam(rs.getString("M_PRODUCTSTATE")));
					params.add(getParam(rs.getString("ACCESSORIES")));
					params.add(getParam(rs.getTimestamp("PURCHASEDATE")));
					params.add(getParam(rs.getInt("C_TAX_ID"),true));
					params.add(getParam(rs.getString("IEMI")));
//					params.add(getParam(rs.getString("Z_IsReturned")));
//					params.add(getParam(rs.getBigDecimal("QtyReturned")));
				DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
				synchronizeIPosOrderLineAction(rs.getInt("I_POSORDERLINE_ID"),db,trx);
				nbOrderLineImported++;
			}
		}catch (Exception e) {
			throw new SQLException(e.getMessage());
		}
		finally{
			try {
				if(stmt != null)
					stmt.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				throw new SQLException(e.getMessage());
			}
		}
	}
	
	private void synchronizeIPosOrderLineAction(int i_POSOrderLine_ID,MSyncDatabase db,Trx trx) throws SQLException{
		PreparedStatement stmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
					sql	.append("select * from i_PosOrderLineAction@").append(db.getDatabaseLinkName()).append(" where I_POSORDERLINE_ID= ?");
		StringBuffer sql2 = new StringBuffer();
					sql2.append("Insert into i_PosOrderLineAction (AD_CLIENT_ID,AD_ORG_ID,COMMENTS,CREATEDBY,DATEACTION,I_POSORDERLINEACTION_ID,I_POSORDERLINE_ID,ISACTIVE,")
						.append("QTYENTERED,UPDATEDBY,AD_OrgTo_ID,Z_PosWfAction_ID) ")
						.append("values ")
						.append("(?,?,?,?,?,?,?,?,?,?,?,?)");						
		try {
			stmt = DB.prepareStatement(sql.toString(),trx);
				stmt.setInt(1,i_POSOrderLine_ID);
			rs = stmt.executeQuery();
			while(rs.next()){
				ArrayList<Object> params = new ArrayList<Object>();
					params.add(rs.getInt("AD_CLIENT_ID"));
					params.add(rs.getInt("AD_ORG_ID"));
					params.add(getParam(rs.getString("COMMENTS")));
					params.add(rs.getInt("CREATEDBY"));
					params.add(getParam(rs.getTimestamp("DATEACTION")));
					params.add(rs.getInt("I_POSORDERLINEACTION_ID"));
					params.add(rs.getInt("I_POSORDERLINE_ID"));
					params.add(rs.getString("ISACTIVE"));
					params.add(getParam(rs.getBigDecimal("QTYENTERED")));
					params.add(rs.getInt("UPDATEDBY"));
					params.add(rs.getInt("AD_OrgTo_ID"));
					params.add(rs.getInt("Z_PosWfAction_ID"));
				DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
				nbOrderLineActionImported++;
			}
		}catch (Exception e) {
			throw new SQLException(e.getMessage());
		}
		finally{
			try {
				if(stmt != null)
					stmt.close();
				if(rs != null)
					rs.close();
			} catch (SQLException e) {
				throw new SQLException(e.getMessage());
			}
		}
	}
	
	private void synchronizeIPosPayment(int i_POSOrder_ID,MSyncDatabase db,Trx trx) throws SQLException{
		PreparedStatement stmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
					sql	.append("select * from i_PosOrderPayment@").append(db.getDatabaseLinkName()).append(" where I_POSORDER_ID= ?");
		StringBuffer sql2 = new StringBuffer();
			sql2	.append("Insert into i_PosOrderPayment (AD_CLIENT_ID,AD_ORG_ID,C_BANKACCOUNT_ID,C_DOCTYPE_ID,CREATEDBY,I_POSORDER_ID,I_POSORDERPAYMENT_ID,ISACTIVE,PAYAMT,")
					.append("UPDATEDBY,ZSUBPAYMENTRULE_ID,DESCRIPTION) ")
					.append("values ")
					.append("(?,?,?,?,?,?,?,?,?,?,?,?)");			
		try {
			stmt = DB.prepareStatement(sql.toString(),trx);
				stmt.setInt(1,i_POSOrder_ID);
			rs = stmt.executeQuery();
			while(rs.next()){
				ArrayList<Object> params = new ArrayList<Object>();
					params.add(rs.getInt("AD_CLIENT_ID"));
					params.add(rs.getInt("AD_ORG_ID"));
					params.add(rs.getInt("C_BANKACCOUNT_ID"));
					params.add(rs.getInt("C_DOCTYPE_ID"));
					params.add(rs.getInt("CREATEDBY"));
					params.add(rs.getInt("I_POSORDER_ID"));
					params.add(rs.getInt("I_POSORDERPAYMENT_ID"));
					params.add(getParam(rs.getString("ISACTIVE")));
					params.add(getParam(rs.getBigDecimal("PAYAMT")));
					params.add(rs.getInt("UPDATEDBY"));
					params.add(rs.getInt("ZSUBPAYMENTRULE_ID"));
					params.add(getParam(rs.getString("DESCRIPTION")));
				DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
				nbOrderPaymentImported++;
			}
			}catch (Exception e) {
				throw new SQLException(e.getMessage());
			}
			finally{
				try {
					if(stmt != null)
						stmt.close();
					if(rs != null)
						rs.close();
				} catch (SQLException e) {
					throw new SQLException(e.getMessage());
				}	
			}
	}
	
	private int synchronizeIPosPartner(int i_POSOrder_ID,MSyncDatabase db,Trx trx) throws SQLException{
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int existBP = 0;
		StringBuffer sql = new StringBuffer();
					sql	.append("select * from i_PosOrderPartner@").append(db.getDatabaseLinkName()).append(" where I_POSORDER_ID= ? order by created asc");
		StringBuffer sql2 = new StringBuffer("INSERT INTO I_PosOrderPartner (AD_CLIENT_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,I_POSORDERPARTNER_ID,C_GREETING_ID,NAME,NAME2,VALUE,PHONE,PHONE2,TAXID,C_BP_GROUP_ID,ISFULLBPACCESS,EMAIL")
									  .append(",INVADDRESS1,INVADDRESS2,INVADDRESS3,INVADDRESS4,INVZIP,INVCITY,INVC_COUNTRY_ID")
									  .append(",SHIPNAME,SHIPADDRESS1,SHIPADDRESS2,SHIPADDRESS3,SHIPADDRESS4,SHIPZIP,SHIPCITY,SHIPC_COUNTRY_ID,C_BPartner_ID,I_POSORDER_ID,LAST_AD_ORG_ID) ")
		  							.append("VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		int posPartner_id =0;
		try {
				stmt = DB.prepareStatement(sql.toString(),trx);
					stmt.setInt(1,i_POSOrder_ID);
				rs = stmt.executeQuery();
				while(rs.next()){
					Object[] sqlparams = {rs.getInt("AD_ORG_ID"),rs.getInt("I_POSORDERPARTNER_ID")}; 
					existBP = DB.getSQLValue(trx,"select count(*) from i_PosOrderPartner where ad_org_id = ? and i_posorderpartner_id = ? ", sqlparams);
					if (existBP < 1) {	// New BP
						ArrayList<Object> params = new ArrayList<Object>();
						params.add(rs.getInt("AD_CLIENT_ID"));
						params.add(rs.getInt("AD_ORG_ID"));
						params.add(getParam(rs.getTimestamp("CREATED")));
						params.add(rs.getInt("CREATEDBY"));
						params.add(getParam(rs.getTimestamp("UPDATED")));
						params.add(rs.getInt("UPDATEDBY"));
						params.add(rs.getInt("I_POSORDERPARTNER_ID"));
						params.add(rs.getInt("C_GREETING_ID"));
						params.add(getParam(rs.getString("NAME")));
						params.add(getParam(rs.getString("NAME2")));
						params.add(getParam(rs.getString("VALUE")));
						params.add(getParam(rs.getString("PHONE")));
						params.add(getParam(rs.getString("PHONE2")));
						params.add(getParam(rs.getString("TAXID")));
						params.add(rs.getInt("C_BP_GROUP_ID"));
						params.add(getParam(rs.getString("ISFULLBPACCESS")));
						params.add(getParam(rs.getString("EMAIL")));
						params.add(getParam(rs.getString("INVADDRESS1")));
						params.add(getParam(rs.getString("INVADDRESS2")));
						params.add(getParam(rs.getString("INVADDRESS3")));
						params.add(getParam(rs.getString("INVADDRESS4")));
						params.add(getParam(rs.getString("INVZIP")));
						params.add(getParam(rs.getString("INVCITY")));
						params.add(rs.getInt("INVC_COUNTRY_ID"));
						params.add(getParam(rs.getString("SHIPNAME")));
						params.add(getParam(rs.getString("SHIPADDRESS1")));
						params.add(getParam(rs.getString("SHIPADDRESS2")));
						params.add(getParam(rs.getString("SHIPADDRESS3")));
						params.add(getParam(rs.getString("SHIPADDRESS4")));
						params.add(getParam(rs.getString("SHIPZIP")));
						params.add(getParam(rs.getString("SHIPCITY")));
						params.add(rs.getInt("SHIPC_COUNTRY_ID"));
						params.add(rs.getInt("C_BPartner_ID"));
						params.add(i_POSOrder_ID);
						params.add(rs.getInt("AD_ORG_ID"));
						DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
					}else {    //   Update BP
						StringBuffer sql3 = new StringBuffer("UPDATE I_PosOrderPartner ")
								.append(" SET UPDATED = ?,C_GREETING_ID=?,NAME=?,NAME2=?,VALUE=?,PHONE=?,PHONE2=?,TAXID=?,C_BP_GROUP_ID=?,ISFULLBPACCESS=?,EMAIL=?,")
								.append("INVADDRESS1=?,INVADDRESS2=?,INVADDRESS3=?,INVADDRESS4=?,INVZIP=?,INVCITY=?,INVC_COUNTRY_ID =?, ")
								.append("SHIPNAME=?,SHIPADDRESS1=?,SHIPADDRESS2=?,SHIPADDRESS3=?,SHIPADDRESS4=?,SHIPZIP=?,SHIPCITY=?,SHIPC_COUNTRY_ID=?,LAST_AD_ORG_ID=? ")
								.append("WHERE AD_ORG_ID = ? AND I_POSORDERPARTNER_ID = ? ");

						ArrayList<Object> params = new ArrayList<Object>();
						params.add(getParam(rs.getTimestamp("UPDATED")));
						params.add(rs.getInt("C_GREETING_ID"));
						params.add(getParam(rs.getString("NAME")));
						params.add(getParam(rs.getString("NAME2")));
						params.add(getParam(rs.getString("VALUE")));
						params.add(getParam(rs.getString("PHONE")));
						params.add(getParam(rs.getString("PHONE2")));
						params.add(getParam(rs.getString("TAXID")));
						params.add(rs.getInt("C_BP_GROUP_ID"));
						params.add(getParam(rs.getString("ISFULLBPACCESS")));
						params.add(getParam(rs.getString("EMAIL")));

						params.add(getParam(rs.getString("INVADDRESS1")));
						params.add(getParam(rs.getString("INVADDRESS2")));
						params.add(getParam(rs.getString("INVADDRESS3")));
						params.add(getParam(rs.getString("INVADDRESS4")));
						params.add(getParam(rs.getString("INVZIP")));
						params.add(getParam(rs.getString("INVCITY")));
						params.add(rs.getInt("INVC_COUNTRY_ID"));

						params.add(getParam(rs.getString("SHIPNAME")));
						params.add(getParam(rs.getString("SHIPADDRESS1")));
						params.add(getParam(rs.getString("SHIPADDRESS2")));
						params.add(getParam(rs.getString("SHIPADDRESS3")));
						params.add(getParam(rs.getString("SHIPADDRESS4")));
						params.add(getParam(rs.getString("SHIPZIP")));
						params.add(getParam(rs.getString("SHIPCITY")));
						params.add(rs.getInt("SHIPC_COUNTRY_ID"));
						params.add(rs.getInt("LAST_AD_ORG_ID"));

						params.add(rs.getInt("AD_ORG_ID"));
						params.add(rs.getInt("I_POSORDERPARTNER_ID"));

						DB.executeUpdate(sql3.toString(),params.toArray(new Object[params.size()]),trx);
					}			
					
					nbOrderPartnerImported++;
				}
			}catch (Exception e) {
				throw new SQLException(e.getMessage());
			}
			finally{
				try {
					if(stmt != null)
						stmt.close();
					if(rs != null)
						rs.close();
				} catch (SQLException e) {
					throw new SQLException(e.getMessage());
				}
		}
		return posPartner_id;
	}
	
	private void synchronizeIPosMessage(int i_POSOrder_ID,MSyncDatabase db,Trx trx) throws SQLException{
		PreparedStatement stmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
					sql	.append("select * from i_PosOrderMsg@").append(db.getDatabaseLinkName()).append(" where I_POSORDER_ID= ? order by created asc");
		StringBuffer sql2 = new StringBuffer("INSERT INTO I_POSORDERMSG (AD_CLIENT_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,I_POSORDERMSG_ID,AD_MESSAGE_ID,I_POSORDER_ID) ")
									.append("VALUES (?,?,?,?,?,?,?,?,?)");
		try {
				stmt = DB.prepareStatement(sql.toString(),trx);
					stmt.setInt(1,i_POSOrder_ID);
				rs = stmt.executeQuery();
				while(rs.next()){
					ArrayList<Object> params = new ArrayList<Object>();
						params.add(rs.getInt("AD_CLIENT_ID"));
						params.add(rs.getInt("AD_ORG_ID"));
						params.add(getParam(rs.getTimestamp("CREATED")));
						params.add(rs.getInt("CREATEDBY"));
						params.add(getParam(rs.getTimestamp("UPDATED")));
						params.add(rs.getInt("UPDATEDBY"));
						params.add(rs.getInt("I_POSORDERMSG_ID"));
						params.add(rs.getInt("AD_MESSAGE_ID"));
						params.add(i_POSOrder_ID);
					DB.executeUpdate(sql2.toString(),params.toArray(new Object[params.size()]),trx);
					nbOrderMesagesImported++;
				}
			}catch (Exception e) {
				throw new SQLException(e.getMessage());
			}
			finally{
				try {
					if(stmt != null)
						stmt.close();
					if(rs != null)
						rs.close();
				} catch (SQLException e) {
					throw new SQLException(e.getMessage());
				}
		}
	}
	
	private Object getParam(Object o){
		int sqlType = Types.VARCHAR;
		if(o instanceof BigDecimal)
			sqlType = Types.NUMERIC;
		else if(o instanceof Timestamp )
			sqlType = Types.TIMESTAMP;
		if(o == null){
			return new NullParameter(sqlType);
		}else{
			return o;
		}
	}
	
	private Object getParam(Integer o,boolean isFk){
		int sqlType = Types.INTEGER;
		if(isFk){
			if(o.intValue() == 0)
				return new NullParameter(sqlType);
		}
		return o;
	}
}
