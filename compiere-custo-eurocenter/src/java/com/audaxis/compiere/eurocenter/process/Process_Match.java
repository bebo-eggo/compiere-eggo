package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MCurrency;
import org.compiere.model.MOrder;
import org.compiere.model.X_XX_BP_MATCHING;
import org.compiere.model.X_XX_BP_MATCHING_DET;
import org.compiere.model.X_XX_BP_MATCHING_LINE;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.SvrProcessExtended;

public class Process_Match extends SvrProcessExtended {

	private int record_ID = 0;
	private X_XX_BP_MATCHING parent;
	private int org_ID;

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		record_ID = getRecord_ID();
		parent = new X_XX_BP_MATCHING(getCtx(), record_ID, get_Trx());
		org_ID = DB.getSQLValue(get_Trx(), "SELECT max(o.AD_Org_ID)  FROM AD_OrgInfo o where o.IsOrgAdmin='Y' and o.ad_client_id = ? ", getAD_Client_ID());
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = "Select XX_BP_MATCHING_LINE_ID from XX_BP_MATCHING_LINE line where line.XX_BP_MATCHING_ID = ? and IsActive = 'Y' ";
		String sql2 = "Select * from XX_BP_MATCHING_DET line where line.C_BPartner_ID = ? and line.XX_BP_MATCHING_ID = ? and IsActive = 'Y' order by C_BPartner_ID ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CopyOnWriteArrayList<X_XX_BP_MATCHING_LINE> bpLists = new CopyOnWriteArrayList<X_XX_BP_MATCHING_LINE>();
 		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			int index = 1;
			pstmt.setInt (index++, parent.getXX_BP_MATCHING_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				bpLists.add(new X_XX_BP_MATCHING_LINE(getCtx(), rs.getInt(1), get_Trx()));
			}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql.toString(), e);
		}
		finally{
			Util.closeCursor(pstmt, rs);
		}
		parent.setDescription2("NB Tiers traiter : "+bpLists.size());
		if(bpLists.size()>0)
		{
			pstmt = null;
			rs = null;
			CopyOnWriteArrayList<MAllocationHdr> allocs = new CopyOnWriteArrayList<MAllocationHdr>();
			try
			{
				
				pstmt = DB.prepareStatement (sql2.toString(), get_Trx());
				for (int i = 0; i < bpLists.size(); i++) {
					int index = 1;
					pstmt.setInt (index++, bpLists.get(i).getC_BPartner_ID());
					pstmt.setInt (index++, parent.getXX_BP_MATCHING_ID());
					rs = pstmt.executeQuery ();
					int round = 0;
					MAllocationHdr hdr = null;
					while (rs.next ())
					{
						X_XX_BP_MATCHING_DET line = new X_XX_BP_MATCHING_DET(getCtx(), rs, get_Trx());
						
						if(round == 0)
						{
							round ++;
							hdr = new MAllocationHdr(getCtx(), 0, get_Trx());
							hdr.setAD_Org_ID(org_ID);
							hdr.setDateAcct(parent.getDateAcct());
							hdr.setDateTrx(parent.getDateAcct());
							hdr.setC_Currency_ID(102);
							hdr.setDocStatus(MAllocationHdr.DOCSTATUS_Drafted);
							hdr.setDocAction(MAllocationHdr.DOCACTION_Complete);
							hdr.setDescription("Affectation en masse, Lettrage : "+parent.getDocumentNo()+", tiers : "+line.getValue());
							hdr.setApprovalAmt(bpLists.get(i).getSOLDE());
							hdr.save();
							allocs.add(hdr);
							bpLists.get(i).setC_AllocationHdr_ID(hdr.getC_AllocationHdr_ID());
							bpLists.get(i).save();
						}
						MAllocationLine l = new MAllocationLine(hdr);
						if(line.getC_Invoice_ID()>0)
							l.setC_Invoice_ID(line.getC_Invoice_ID());
						else
							l.setC_Payment_ID(line.getC_Payment_ID());
						l.setDateTrx(new Timestamp(getCtx().getContextAsTime("#Date")));
						l.setC_BPartner_ID(line.getC_BPartner_ID());
						if(line.getC_Payment_ID()>0)
							l.setAmount(line.getSOLDE().multiply(BigDecimal.valueOf(-1)));
						else
							l.setAmount(line.getSOLDE());
						l.save();
					}
					hdr.setApprovalAmt(bpLists.get(i).getSOLDE());
					hdr.save();
				}
				for (int j = 0; j < allocs.size(); j++) {
					if(!DocumentEngine.processIt(allocs.get(j), MAllocationHdr.DOCACTION_Complete))
					{
						// Ignore errors in processing
						log.warning("Impossible de traiter l'affectation: " + allocs.get(j).getDocumentNo());
					}
					
					if(!allocs.get(j).save())
						throw new CompiereStateException("Impossible de sauvegarder l'affectation");
				}
			}
			catch (Exception e)
			{
				log.log (Level.SEVERE, sql.toString(), e);
			}
			finally{
				Util.closeCursor(pstmt, rs);
			}
			parent.setDescription2("Affectations créées : "+allocs.size());
			parent.setProcessed(true);
			parent.save();
		}
		return "Processus terminé.";
	}

}
