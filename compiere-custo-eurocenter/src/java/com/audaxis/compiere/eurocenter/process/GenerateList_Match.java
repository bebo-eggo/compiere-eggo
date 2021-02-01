package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.X_XX_BP_MATCHING;
import org.compiere.model.X_XX_BP_MATCHING_DET;
import org.compiere.model.X_XX_BP_MATCHING_LINE;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.SvrProcessExtended;

public class GenerateList_Match extends SvrProcessExtended {

	private int record_ID = 0;
	private int BPartner_ID = 0;
	private X_XX_BP_MATCHING parent;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		record_ID = getRecord_ID();
		parent = new X_XX_BP_MATCHING(getCtx(), record_ID, get_Trx());
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		int nbDET = 0;
		String msGReturn = "";
		String sql = "SELECT i.AD_Client_ID, bp.c_bpartner_id,"+
						"bp.value AS bpvalue,"+
						"bp.name  AS name,"+
						"'I'                                                                         AS doctype,"+
						"i.documentno                                                                AS documentno,"+
						"TRUNC(i.dateinvoiced)                                                       AS dateinvoiced,"+
						"TRUNC(i.dateacct)                                                           AS dateacct,"+
						"Z_INVOICE_OPEN_ASOF(i.C_Invoice_ID,0,TRUNC(?))                                        AS grandtotal,"+
						"i.C_Invoice_ID as Record_ID "+
						"FROM c_invoice i "+
						"INNER JOIN c_bpartner bp "+
						"ON ( i.c_bpartner_id = bp.c_bpartner_id) "+
						"WHERE  i.issotrx                                                                             = 'Y' "+
						"AND i.docstatus                                                                              IN ('CO','CL','RE','VO') "+
						"AND Z_INVOICE_OPEN_ASOF_BASE_ACTSM(i.C_Invoice_ID,0,TRUNC(?),(Select MAX(C_ACCTSCHEMA1_ID) from AD_ClientInfo where AD_Client_ID = i.AD_Client_ID)) <> 0 "+
						"AND i.Posted                                                                                  ='Y' "+
						"AND i.DateAcct <= trunc(?) and i.AD_Client_ID = ?  and not exists (select 1 from C_ALLOCATIONLINE inner join C_ALLOCATIONHDR on C_ALLOCATIONHDR.C_ALLOCATIONHDR_ID = C_ALLOCATIONLINE.C_ALLOCATIONHDR_ID  "
						+ "where C_ALLOCATIONLINE.C_INvoice_ID = i.C_INvoice_ID and C_ALLOCATIONHDR.DateAcct > ? )";
		if(parent.getC_BPartner_ID()>0)
			sql = sql+" AND i.c_bpartner_id = ? ";
					sql = sql+"UNION ALL "+
						"SELECT p.AD_Client_ID, bp.c_bpartner_id,"+
						"bp.value AS bpvalue,"+
						"bp.name  AS name,"+
						"'P' AS docType,"+
						"p.documentno"+
						"|| '          '"+
						"|| p.c_payment_id                    AS documentno,"+
						"TRUNC(p.datetrx)                     AS dateinvoiced,"+
						"TRUNC(p.dateacct)                    AS dateacct,"+
						"(ZpaymentAvailable2(p.C_Payment_ID,TRUNC(?),'Y') *-1)         AS grandtotal,"+
						"p.c_Payment_ID as Record_ID "+
						"FROM c_Payment p,"+
						"c_bpartner bp "+
						"WHERE p.IsReceipt                                        = 'Y' and p.C_Charge_ID is null "+
						"AND p.docstatus                                           IN ('CO','CL','RE','VO') "+
						"AND p.c_bpartner_id                                        = bp.c_bpartner_id "+
						//"AND (p.IsDraft='Y' ) "+
						"AND ZpaymentAvailable2(p.C_Payment_ID,TRUNC(?),'Y') <> 0 "+
						"AND p.DateAcct <=  trunc(?) and p.AD_Client_ID = ? "+
						"AND p.Posted='Y' and not exists (select 1 from C_ALLOCATIONLINE "
						+ "inner join C_ALLOCATIONHDR on C_ALLOCATIONHDR.C_ALLOCATIONHDR_ID = C_ALLOCATIONLINE.C_ALLOCATIONHDR_ID "
						+ "where C_ALLOCATIONLINE.c_Payment_ID = p.c_Payment_ID and C_ALLOCATIONHDR.DateAcct > ? )";
					if(parent.getC_BPartner_ID()>0)
							sql = sql+" AND p.C_BPartner_ID = ? ";

					PreparedStatement pstmt = null;
						ResultSet rs = null;
						try
						{
							pstmt = DB.prepareStatement (sql.toString(), get_Trx());
							int index = 1;
							pstmt.setTimestamp (index++, parent.getDateAcct());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							pstmt.setInt(index++, parent.getAD_Client_ID());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							if(parent.getC_BPartner_ID()>0)
								pstmt.setInt(index++, parent.getC_BPartner_ID());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							pstmt.setInt(index++, parent.getAD_Client_ID());
							pstmt.setTimestamp (index++, parent.getDateAcct());
							if(parent.getC_BPartner_ID()>0)
								pstmt.setInt(index++, parent.getC_BPartner_ID());
							rs = pstmt.executeQuery ();
							nbDET = 0;
							while (rs.next ())
							{	
								X_XX_BP_MATCHING_DET det = new X_XX_BP_MATCHING_DET(getCtx(), 0, get_Trx());
								det.setAD_Org_ID(parent.getAD_Org_ID());
								det.setC_BPartner_ID(rs.getInt(2));
								det.setSOLDE(rs.getBigDecimal(9));
								det.setDocumentNo(rs.getString(6));
								if(rs.getString(5).equals("I"))
									det.setC_Invoice_ID(rs.getInt(10));
								else
									det.setC_Payment_ID(rs.getInt(10));
								det.setValue(rs.getString(3));
								det.setBPName(rs.getString(4));
								det.setXX_BP_MATCHING_ID(parent.getXX_BP_MATCHING_ID());
								det.save();
								nbDET++;
							}			
						}
						catch (Exception e)
						{
							log.log (Level.SEVERE, sql.toString(), e);
						}
						finally{
							Util.closeCursor(pstmt, rs);
						}
						parent.setDescription2("Production Lignes détails : "+nbDET);		
						if(nbDET>0)
						{
							sql = "Select * from (Select C_BPARTNER_ID,value,BpName, sum(solde) as solde "
									+ "from XX_BP_MATCHING_DET where XX_BP_MATCHING_ID = ?  group by C_BPARTNER_ID,value,BpName ) "
									+ "where solde between ? and ? ";
							pstmt = null;
							rs = null;
							pstmt = DB.prepareStatement (sql.toString(), get_Trx());
							int index = 1;
							pstmt.setInt(index++, parent.getXX_BP_MATCHING_ID());
							pstmt.setBigDecimal(index++, parent.getValidFrom());
							pstmt.setBigDecimal(index++, parent.getValidTo());
							rs = pstmt.executeQuery ();
							nbDET = 0;
							while (rs.next ())
							{	
								X_XX_BP_MATCHING_LINE line = new X_XX_BP_MATCHING_LINE(getCtx(), 0, get_Trx());
								line.setXX_BP_MATCHING_ID(parent.getXX_BP_MATCHING_ID());
								line.setAD_Org_ID(parent.getAD_Org_ID());
								line.setC_BPartner_ID(rs.getInt(1));
								line.setBPName(rs.getString(3));
								line.setValue(rs.getString(2));
								line.setSOLDE(rs.getBigDecimal(4));
								line.save();
								nbDET++;
							}
							parent.setDescription2("Production Résumé par tiers : "+nbDET);		
						}
						parent.save();
		return "Process terminé, voir la description";
	}

}
