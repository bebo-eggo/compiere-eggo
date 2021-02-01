package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.jboss.security.srp.SRPServerProxy;

import com.audaxis.compiere.db.Util;

public class ImportECHFIN extends SvrProcess{

	private boolean p_DeleteOldImported = false;
	private boolean p_ValidateData = false;
	private int m_AD_Client_ID = 0;
	
	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? " ;	
	
	public ImportECHFIN() {
		// TODO Auto-generated constructor stub
	}
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal)element.getParameter()).intValue();
			else if (name.equals("DeleteOldImported"))
				p_DeleteOldImported = ((String)element.getParameter()).equals("Y");
			else if (name.equals("ValidateData"))
				p_ValidateData = ((String)element.getParameter()).equals("Y");
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}
	@Override
	protected String doIt() throws Exception {
		String sql = null;
		int no = 0;
		Ctx ctx = getCtx();
		
		if (p_DeleteOldImported)
		{
			sql = "DELETE FROM I_ECHFIN "
				  + "WHERE I_IsImported='Y' "
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			log.fine("Delete Old Impored =" + no);
		}
		
		sql = "UPDATE I_ECHFIN "
				  + "SET AD_Client_ID = COALESCE (AD_Client_ID,?), "
				  + " AD_Org_ID = COALESCE (AD_Org_ID,0), "
				  + " IsActive = COALESCE (IsActive, 'Y'), "
				  + " Created = COALESCE (Created, SysDate), "
				  + " CreatedBy = COALESCE (CreatedBy, 0), "
				  + " Updated = COALESCE (Updated, SysDate), "
				  + " UpdatedBy = COALESCE (UpdatedBy, 0), "
				  + " I_ErrorMsg = NULL, "
				  + " I_IsImported = 'N' "
				  + "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL ";
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			log.info ("Reset=" + no);
			
			sql = "UPDATE I_ECHFIN o "
					+ "SET I_IsImported='E', I_ErrorMsg='ERR=Num Acceptation manquant, '"
					+ "WHERE Z_NumAccept IS NULL "
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN o "
					+ "SET I_IsImported='E', I_ErrorMsg='ERR=Ordre de vente manquant, '"
					+ "WHERE DocumentNo IS NULL "
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());

			sql = "UPDATE I_ECHFIN o "
					+ "SET I_IsImported='E', I_ErrorMsg='ERR=Type d''échéance manquant, '"
					+ "WHERE ValueTypeEch IS NULL "
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql =  "UPDATE I_ECHFIN "
					  + "SET Z_DateEnvAttD = TO_DATE(Z_DateEnvAtt,'DD/MM/YYYY') "
					  + "WHERE Z_DateEnvAtt IS NOT NULL"
					  + " AND I_IsImported<>'Y'" 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
			
			sql =  "UPDATE I_ECHFIN "
					  + "SET Z_DateEnvContD = TO_DATE(Z_DateEnvCont,'DD/MM/YYYY') "
					  + "WHERE Z_DateEnvCont IS NOT NULL"
					  + " AND I_IsImported<>'Y'" 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN i "	//	Set Order_ID
					  + "SET C_Order_ID=(SELECT MAX(C_Order_ID) FROM C_Order d WHERE d.DocumentNo=i.DocumentNo AND i.AD_Client_ID=d.AD_Client_ID) "
					  + "WHERE C_Order_ID IS NULL AND DocumentNo IS NOT NULL AND I_IsImported<>'Y' "
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN "
					+ "SET I_IsImported='E', I_ErrorMsg='ERR=Ordre de vente non trouvé, '"
					+ "WHERE C_Order_ID IS NULL AND DocumentNo IS NOT NULL "
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN i "	//	Set Order_ID
			  + "SET Z_TYPEECHEANCE_ID=(SELECT MAX(Z_TYPEECHEANCE_ID) FROM Z_TYPEECHEANCE d WHERE d.Value=i.ValueTypeEch AND i.AD_Client_ID=d.AD_Client_ID) "
			  + "WHERE Z_TYPEECHEANCE_ID IS NULL AND ValueTypeEch IS NOT NULL AND I_IsImported<>'Y' "
			  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN o "
					+ "SET I_IsImported='E', I_ErrorMsg='ERR=Type d''échéance non trouvé, '"
					+ "WHERE Z_TYPEECHEANCE_ID IS NULL and ValueTypeEch IS NOT NULL "
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN i "	//	Set Order_ID
					  + "SET Z_OrderPaymSchedule_ID="
					  + "(SELECT MAX(Z_OrderPaymSchedule_ID) FROM Z_OrderPaymSchedule d WHERE d.C_Order_ID=i.C_Order_ID "
					  + "AND i.AD_Client_ID=d.AD_Client_ID and d.Z_TYPEECHEANCE_ID = i.Z_TYPEECHEANCE_ID) "
					  + "WHERE C_Order_ID IS NOT NULL and ValueTypeEch IS NOT NULL AND Z_OrderPaymSchedule_ID is null AND I_IsImported<>'Y' "
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			sql = "UPDATE I_ECHFIN o "
					+ "SET I_IsImported='E', I_ErrorMsg='ERR=Ligne échéance inexistante dans la vente, '"
					+ "WHERE Z_OrderPaymSchedule_ID IS NULL and ValueTypeEch IS NOT NULL and C_Order_ID is not null "
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			
			int NbError = DB.getSQLValue(get_Trx(), "Select Count(*) from I_ECHFIN where I_IsImported='E' "+ STD_CLIENT_CHECK,m_AD_Client_ID);
			int NbAll = DB.getSQLValue(get_Trx(), "Select Count(*) from I_ECHFIN  where AD_Client_ID = ?",m_AD_Client_ID);
			int NbOK = DB.getSQLValue(get_Trx(), "Select Count(*) from I_ECHFIN where I_IsImported='N' "+ STD_CLIENT_CHECK,m_AD_Client_ID);
			
			if(p_ValidateData)
			{
				addLog("Nombre total dans l'import : "+NbAll);
				addLog("Nombre Ok pour import : "+NbOK);
				addLog("Nombre Erreur de l'import : "+NbError);
			}
			else
			{
				sql = "Select Z_OrderPaymSchedule_ID, Z_Complet,Z_NumAccept, IsPaid, Z_DateEnvAttD, Z_DateEnvContD, I_ECHFIN_ID from I_ECHFIN where I_IsImported = 'N' "+ STD_CLIENT_CHECK;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				int NbUpdate = 0;
				try
				{
					pstmt = DB.prepareStatement (sql.toString(), get_Trx());
					pstmt.setInt(1, m_AD_Client_ID);
					rs = pstmt.executeQuery ();
					while(rs.next())
					{
						MOrderPaymSchedule mops = new MOrderPaymSchedule(getCtx(), rs.getInt(1), get_Trx());
						mops.setZ_NumAccept(rs.getString("Z_NumAccept"));
						mops.set_ValueNoCheck("IsPaid", rs.getString("IsPaid").equals("Y"));
						mops.set_ValueNoCheck("Z_Complet", rs.getString("Z_Complet").equals("Y"));
						if(rs.getTimestamp("Z_DateEnvAttD")!=null)
							mops.set_ValueNoCheck("Z_DateEnvAtt", rs.getTimestamp("Z_DateEnvAttD"));
						if(rs.getTimestamp("Z_DateEnvContD")!=null)
							mops.set_ValueNoCheck("Z_DateEnvCont", rs.getTimestamp("Z_DateEnvContD"));
						if(mops.save())
						{
							DB.executeUpdate("Update I_ECHFIN set I_IsImported = 'Y', processed = 'Y' where I_ECHFIN_ID = ? ", rs.getInt(7), get_Trx());
						}
						else
							DB.executeUpdate("Update I_ECHFIN set I_IsImported = 'E', I_ErrorMsg = 'Erreur lors de la MAJ' where I_ECHFIN_ID = ? ", rs.getInt(7), get_Trx());
						NbUpdate++;
					}
				}
				catch (Exception e)	{
					log.log(Level.SEVERE, "Import Ech Paiement - " + sql.toString(), e);
				}finally {
					Util.closeCursor(pstmt, rs);
				}
				
				addLog("Nombre total de l'import : "+NbAll);
				addLog("Nombre Ok pour import : "+NbOK);
				addLog("Nombre Maj de l'import : "+NbUpdate);
				addLog("Nombre Erreur de l'import : "+NbError);
			}
			
		
		return "Traitement terminé";
	}

}
