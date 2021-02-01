package com.audaxis.compiere.eurocenter.process;

import org.compiere.common.CompiereStateException;
import org.compiere.model.X_XX_BPARTNER_GROUP;
import org.compiere.util.DB;

import com.audaxis.compiere.process.SvrProcessExtended;

public class ProcessBPartnerGroup extends SvrProcessExtended {

	private X_XX_BPARTNER_GROUP hdr = null;	

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		hdr = new X_XX_BPARTNER_GROUP(getCtx(), getRecord_ID(), get_Trx());
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		int nbTiersUp = DB.executeUpdate( get_Trx(),"merge into C_BPartner xx "
				+ "using (select C_BPartner_ID,C_BP_Group_ID from XX_BPARTNER_GROUP_L " 
				+ "where XX_BPARTNER_GROUP_L.isvalid = 'Y' and XX_BPARTNER_GROUP_ID = ?)zz "
                + "on(zz.C_BPartner_ID = xx.C_BPartner_ID) "
                + "when matched then update set xx.C_BP_Group_ID = zz.C_BP_Group_ID, updated = sysdate, updatedBy = ?", hdr.getXX_BPARTNER_GROUP_ID(), getAD_User_ID());
		int nbInvUp = DB.executeUpdate( get_Trx(),"merge into C_INVOICE xx "
				+ "using (select C_BPartner_ID,C_BP_Group_ID from XX_BPARTNER_GROUP_L " 
				+ "where XX_BPARTNER_GROUP_L.isvalid = 'Y' and XX_BPARTNER_GROUP_ID = ?)zz "
                + "on(zz.C_BPartner_ID = xx.C_BPartner_ID) "
                + "when matched then update set xx.C_BP_Group_ID = zz.C_BP_Group_ID, updated = sysdate, updatedBy = ?", hdr.getXX_BPARTNER_GROUP_ID(), getAD_User_ID());
		int nbOrderUp = DB.executeUpdate( get_Trx(),"merge into C_ORDER xx "
				+ "using (select C_BPartner_ID,C_BP_Group_ID from XX_BPARTNER_GROUP_L " 
				+ "where XX_BPARTNER_GROUP_L.isvalid = 'Y' and XX_BPARTNER_GROUP_ID = ?)zz "
                + "on(zz.C_BPartner_ID = xx.C_BPartner_ID) "
                + "when matched then update set xx.C_BP_Group_ID = zz.C_BP_Group_ID, updated = sysdate, updatedBy = ?", hdr.getXX_BPARTNER_GROUP_ID(), getAD_User_ID());
		updateAccounting( getAD_User_ID());
		hdr.setDescription2("--------------------------------");
		hdr.setDescription2("Traitement terminé avec succès !");
		hdr.setProcessed(true);
		hdr.save();
		return "Tiers, factures et ordres modifiés avec succès.";
	}

	
	private void updateAccounting(int updatedBy)
	{
		String sql = " UPDATE C_BP_Customer_Acct acct  "
			       + " SET ( Updated,UpdatedBy ,C_Prepayment_Acct,C_Receivable_Acct,C_Receivable_Services_Acct) = "
			       + " (SELECT  SysDate,?,p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct " 
					+ " FROM C_BPartner a, C_BP_Group_Acct p " 
					+ " WHERE p.AD_Client_ID= acct.AD_Client_ID " 
					+ " AND p.C_AcctSchema_ID = acct.C_AcctSchema_ID " 
					+ " AND  a.C_BP_Group_ID = p.C_BP_Group_ID " 
					+ " AND acct.C_BPartner_ID = a.C_BPartner_ID) " 
				   + " WHERE EXISTS (SELECT 1 FROM XX_BPARTNER_GROUP_L acct1 "
					             + " WHERE acct1.AD_Client_ID = acct.AD_Client_ID "
					             + " AND   acct1.C_BPartner_ID = acct.C_BPartner_ID and acct1.isvalid = 'Y') ";
		int no = DB.executeUpdate(sql, new Object[]{updatedBy},get_Trx());
		if(no<0)
			{
			hdr.setDescription2("Erreur lors de la MAJ des comptes clients en masse");
			hdr.save();
			}

		sql =    " UPDATE C_BP_Vendor_Acct acct  "
		       + " SET ( Updated,UpdatedBy ,V_Liability_Acct,V_Liability_Services_Acct,V_Prepayment_Acct) = "
		       + " (SELECT  SysDate,?,p.V_Liability_Acct,p.V_Liability_Services_Acct,p.V_Prepayment_Acct " 
				+ " FROM C_BPartner a, C_BP_Group_Acct p " 
				+ " WHERE p.AD_Client_ID= acct.AD_Client_ID " 
				+ " AND p.C_AcctSchema_ID = acct.C_AcctSchema_ID " 
				+ " AND  a.C_BP_Group_ID = p.C_BP_Group_ID " 
				+ " AND acct.C_BPartner_ID = a.C_BPartner_ID) " 
			   + " WHERE EXISTS (SELECT 1 FROM XX_BPARTNER_GROUP_L acct1 "
					             + " WHERE acct1.AD_Client_ID = acct.AD_Client_ID "
					             + " AND   acct1.C_BPartner_ID = acct.C_BPartner_ID  and acct1.isvalid = 'Y') ";
		no = DB.executeUpdate(sql, new Object[]{updatedBy},get_Trx());
		if(no<0)
		{
			hdr.setDescription2("Erreur lors de la MAJ des comptes fournisseurs en masse");
			hdr.save();
			}

		sql =    " UPDATE C_BP_Employee_Acct acct  "
		       + " SET ( Updated,UpdatedBy ,E_Expense_Acct,E_Prepayment_Acct) = "
		       + " (SELECT  SysDate,?,p.E_Expense_Acct,p.E_Prepayment_Acct " 
				+ " FROM C_BPartner a, C_AcctSchema_Default p " 
				+ " WHERE p.AD_Client_ID= acct.AD_Client_ID " 
				+ " AND p.C_AcctSchema_ID = acct.C_AcctSchema_ID " 
				+ " AND acct.C_BPartner_ID = a.C_BPartner_ID) " 
			   + " WHERE EXISTS (SELECT 1 FROM XX_BPARTNER_GROUP_L acct1 "
					             + " WHERE acct1.AD_Client_ID = acct.AD_Client_ID "
					             + " AND   acct1.C_BPartner_ID = acct.C_BPartner_ID  and acct1.isvalid = 'Y') ";
		no = DB.executeUpdate(sql, new Object[]{updatedBy},get_Trx());
		if(no<0)
		{
			hdr.setDescription2("Erreur lors de la MAJ des comptes employés en masse");
			hdr.save();
			}
	}
}
