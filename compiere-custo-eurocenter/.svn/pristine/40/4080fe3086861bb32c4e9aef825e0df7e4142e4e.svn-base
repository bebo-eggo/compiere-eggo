package org.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInventory;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.X_I_InOut;
import org.compiere.model.X_M_InOut;
import org.compiere.util.DB;

import com.audaxis.compiere.model.MLocatorProxy;
import com.audaxis.compiere.model.proxy.MInOutLineProxy;

public class ImportInOut extends SvrProcess {

	/** Client to be imported to */
	private int p_AD_Client_ID = 0;
	/** Default Date */
	private Timestamp p_MovementDate = null;
	/** Delete old Imported */
	private boolean p_DeleteOldImported = false;

	private String docAction = null;

	private ArrayList<MInOut> imps = null;

	private int p_C_DocType_ID = 0;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = ((BigDecimal) element.getParameter())
				.intValue();
			else if (name.equals("MovementDate"))
				p_MovementDate = (Timestamp) element.getParameter();
			else if (name.equals("DeleteOldImported"))
				p_DeleteOldImported = "Y".equals(element.getParameter());
			else if (name.equals("DocAction"))
				docAction = element.getParameter().toString();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = ((BigDecimal) element.getParameter())
				.intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

	}

	@Override
	protected String doIt() throws Exception {
		StringBuffer sql = null;
		int no = 0;
		String clientCheck = " AND AD_Client_ID=" + p_AD_Client_ID;
		imps = new ArrayList<MInOut>();

		// Delete Old Imported
		if (p_DeleteOldImported) {
			sql = new StringBuffer("DELETE FROM I_InOut "
					+ "WHERE I_IsImported='Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.fine("Delete Old Impored =" + no);
		}

		// Reset all data
		sql = new StringBuffer("UPDATE I_InOut "
				+ "SET AD_Client_ID = COALESCE (AD_Client_ID,").append(
						p_AD_Client_ID).append("),");

		sql.append(" IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " I_ErrorMsg = NULL,"
				+ " I_IsImported = 'N' "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL");
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Reset=" + no);

		// Invalid SociÃ©tÃ©
		sql = new StringBuffer("UPDATE I_InOut o "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Société non valide, ' "
				+ "WHERE (AD_Client_ID IS NULL OR AD_Client_ID=0)"
				+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid SociÃ©tÃ©=" + no);

		// Update AD_Org_ID
		sql = new StringBuffer(
				"Update I_InOut i set AD_Org_ID =(SELECT MAX(AD_Org_ID) FROM AD_Org w"
				+ " WHERE i.OrgValue=w.Value AND i.AD_Client_ID=w.AD_Client_ID) where i.AD_Org_ID = 0 or i.AD_Org_ID is null");
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Set Magasins=" + no);

		// Invalid Magasin
		sql = new StringBuffer("UPDATE I_InOut o "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Magasin non valide, ' "
				+ "WHERE (AD_Org_ID IS NULL OR AD_Org_ID=0)"
				+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid Magasins=" + no);

		// Product
		sql = new StringBuffer(
				"UPDATE I_InOut i "
				+ "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
				+ " WHERE i.productValue=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND productValue IS NOT NULL"
				+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.fine("Set Product from Value=" + no);

		// Invalid Product
		sql = new StringBuffer(
				"UPDATE I_InOut "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Article pas trouvé, ' "
				+ "WHERE M_Product_ID IS NULL"
				+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalide Product=" + no);

		// BP from Value
		sql = new StringBuffer(
				"UPDATE I_InOut o "
				+ "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp"
				+ " WHERE o.BPartnerValue=bp.Value AND o.AD_Client_ID=bp.AD_Client_ID) "
				+ "WHERE C_BPartner_ID IS NULL AND BPartnerValue IS NOT NULL"
				+ " AND I_IsImported<>'Y' ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.fine("Set BP from Value=" + no);

		// Invalide BP
		sql = new StringBuffer(
				"UPDATE I_InOut "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Tiers pas trouvé, ' "
				+ "WHERE (C_BPartner_ID IS NULL OR C_BPartner_ID=0)"
				+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalide BPartner=" + no);

		// Set Order
		sql = new StringBuffer(
				"UPDATE I_InOut o "
				+ "SET C_Order_ID=(SELECT MAX(C_Order_ID) FROM C_Order bp"
				+ " WHERE o.PurchaseOrderNo=bp.DocumentNo AND o.AD_Client_ID=bp.AD_Client_ID) "
				+ "WHERE C_Order_ID IS NULL AND PurchaseOrderNo IS NOT NULL"
				+ " AND I_IsImported<>'Y' ").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.fine("Set Order=" + no);

		// Invalid Order
//		sql = new StringBuffer("UPDATE I_InOut o "
//				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Order non valide, ' "
//				+ "WHERE (C_Order_ID IS NULL OR C_Order_ID=0)"
//				+ " AND I_IsImported<>'Y'").append(clientCheck);
//		no = DB.executeUpdate(sql.toString(), get_TrxName());
//		if (no != 0)
//			log.warning("Invalide Order=" + no);

		//Qty = 0
		sql = new StringBuffer("UPDATE I_InOut "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Qté = 0, ' "
				+ "WHERE QtyOrdered=0 OR QtyOrdered is null " + " AND I_IsImported<>'Y'")
		.append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Qty is 0 =" + no);

		commit();

		int noError = DB.getSQLValue(get_Trx(), "Select Count(1) FROM I_InOut where I_IsImported='E' "+clientCheck) ; 

		//lignes a importÃ©
		sql = new StringBuffer ("SELECT * FROM I_InOut "
				+ "WHERE I_IsImported='N' ").append (clientCheck)
				.append(" ORDER BY C_Order_ID, AD_ORG_ID, C_BPartner_ID, M_Product_ID, QtyOrdered DESC");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x_C_Order_ID = 0;
		int x_AD_Org_ID = 0;
		int x_C_BPartner_ID = 0;
		int prev_M_Product_ID = 0;
		int x_M_Product_ID = 0;
		MOrg org = null;
		MOrder mo = null;
		MInOut mi = null;
		int noInsert = 0;
		int noInsertLine = 0;
		int lineNo = 0;
		BigDecimal qtyToDelivred = null ; 

		try
		{
			pstmt = DB.prepareStatement (sql.toString (), get_TrxName());
			rs = pstmt.executeQuery ();
			while (rs.next())
			{
				X_I_InOut imp = new X_I_InOut (getCtx(), rs, get_TrxName());

				x_M_Product_ID = imp.getM_Product_ID();
				
				if (mi == null
						|| imp.getC_BPartner_ID() != x_C_BPartner_ID
						|| imp.getAD_Org_ID() != x_AD_Org_ID
						|| imp.getC_Order_ID() != x_C_Order_ID)
				{
					//NEW M_InOut
					if(mi!=null)
					{
						// Need to commit after each order to prevent deadlocks
						commit();
					}
					lineNo = 10;
					if(imp.getAD_Org_ID() != x_AD_Org_ID)
						org = MOrg.get(getCtx(), imp.getAD_Org_ID());
					
					if(imp.getC_Order_ID() != x_C_Order_ID && imp.getC_Order_ID()> 0)
					{
						mo = new MOrder(getCtx(), imp.getC_Order_ID(), get_Trx());
						mi = new MInOut(mo, p_C_DocType_ID, p_MovementDate);
						qtyToDelivred = BigDecimal.ZERO; 
					}
					else
					{
						mi = new MInOut (getCtx(),0,get_Trx());
						mi.setC_BPartner_ID(imp.getC_BPartner_ID());
						mi.setC_DocType_ID(p_C_DocType_ID);
						mi.setClientOrg(imp.getAD_Client_ID(), imp.getAD_Org_ID());
						if(imp.getDocumentNo()!=null)
							mi.setDocumentNo(imp.getDocumentNo());
						MBPartnerLocation[] mbls = MBPartner.get(getCtx(), imp.getC_BPartner_ID()).getLocations(true);
						for (int i = 0; i < mbls.length; i++) {
							if(mbls[i].isShipTo())
							{
								mi.setC_BPartner_Location_ID(mbls[i].getC_BPartner_Location_ID());
								break;
							}
						}
						if(imp.getM_Warehouse_ID()>0)
							mi.setM_Warehouse_ID(imp.getM_Warehouse_ID());
						else
							mi.setM_Warehouse_ID(MOrgInfo.get(getCtx(), imp.getAD_Org_ID(), get_Trx()).getM_Warehouse_ID());
						mi.setMovementDate(p_MovementDate);
						mi.setDateAcct(p_MovementDate);
						qtyToDelivred = BigDecimal.ZERO; 
						if(imp.getMovementType()!=null)
							mi.setMovementType(imp.getMovementType());
						else
							mi.setMovementType(X_M_InOut.MOVEMENTTYPE_VendorReceipts);
					}
					mi.setDescription("Import " + org.getName() + " " + 
							new SimpleDateFormat("MM/dd/yyyy").format(p_MovementDate));

					mi.setDocStatus(MInOut.DOCSTATUS_Drafted);
					mi.setDocAction(MInOut.DOCACTION_Complete);

					if (!mi.save())
					{
						log.log(Level.SEVERE, "InOut not saved");
						break;
					}

					imps.add(mi);
					x_C_BPartner_ID = imp.getC_BPartner_ID();
					x_AD_Org_ID = imp.getAD_Org_ID();
					x_C_Order_ID = imp.getC_Order_ID();
					noInsert++;
				}
				
				//Ligne
				MInOutLine mil = new MInOutLine(mi);
				MInOutLineProxy milp = new MInOutLineProxy(mil);
				if(imp.getM_Locator_ID()>0)
					mil.setM_Locator_ID(imp.getM_Locator_ID());
				else
					mil.setM_Locator_ID(MLocatorProxy.getDefaultLocatorForWarehouse(mi.getM_Warehouse_ID()));
				mil.setM_Product_ID(imp.getM_Product_ID());
				mil.setQty(imp.getQtyOrdered());
				mil.setQtyEntered(imp.getQtyOrdered());
				mil.setLine(lineNo);
				
				if(x_M_Product_ID != prev_M_Product_ID )
					qtyToDelivred=BigDecimal.ZERO;
				if(imp.getC_OrderLine_ID()>0)
					mil.setC_OrderLine_ID(imp.getC_OrderLine_ID());
				else
					if (imp.getC_Order_ID() > 0)
						mil.setC_OrderLine_ID(milp.getC_OrderLine_ID(getCtx(), imp.getC_Order_ID(), 
								imp.getM_Product_ID(), qtyToDelivred.add(imp.getQtyOrdered()), get_Trx()));
				if(imp.getC_Order_ID() > 0 && mil.getC_OrderLine_ID()<=0)
					imp.setI_ErrorMsg("Importé mais pas de ligne OA trouvée");
				lineNo += 10;
				
				if (mil.save())
				{
					imp.setI_IsImported(X_I_InOut.I_ISIMPORTED_Yes);
					imp.setM_InOut_ID(mil.getM_InOut_ID());
					imp.setProcessed(true);
					if (imp.save())
						noInsertLine++;
					qtyToDelivred = qtyToDelivred.add(imp.getQtyOrdered());	
				}
				
				prev_M_Product_ID = x_M_Product_ID;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}

		//Traiter le document si Complete selectionnÃ© !
		if(docAction.equals(MInventory.DOCACTION_Complete))
			for (int i = 0; i < imps.size(); i++) {
				if(!DocumentEngine.processIt(imps.get(i), docAction))
				{
					// Ignore errors in processing
					log.warning("Could not process inout : " + imps.get(i).getDocumentNo());
				}
				imps.get(i).save();
			}

		addLog (0, null, new BigDecimal (noError), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@M_InOut_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noInsertLine), "@M_InOutLine_ID@: @Inserted@");

		return "";
	}

}
