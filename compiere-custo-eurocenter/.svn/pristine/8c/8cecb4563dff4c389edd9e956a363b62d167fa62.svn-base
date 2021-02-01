package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.eurocenter.util.AllocationUtil;

public class AllocationAuto extends SvrProcess {

	private static CLogger log = CLogger.getCLogger(AllocationAuto.class);
	private int p_Client_ID = 0;
	private Timestamp p_DateTo;
	private int Org_ID = 0;
	private Timestamp DateTrx = null;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_Client_ID = element.getParameterAsInt();
			else if (name.equals("DateTo"))
				p_DateTo = (Timestamp)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		Org_ID = DB.getSQLValue(get_Trx(), "Select AD_OrgInfo.AD_ORG_ID from AD_OrgInfo where ISORGADMIN = 'Y' and AD_Client_ID = ? ", p_Client_ID);
		DateTrx = new Timestamp(getCtx().getContextAsTime("#Date"));
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		//DB.executeUpdate("DROP TABLE TXX_OPENINVOICE PURGE", new Object[] {getCtx().getAD_User_ID(),this.get_ID()}, get_Trx());
		log.warning("Création des tables de travail.");
		DB.executeUpdate("DELETE fROM TXX_OPENINVOICE", get_Trx());
		DB.executeUpdate("INSERT INTO TXX_OPENINVOICE "
				+ "Select ci.C_BPARTNER_ID,ci.C_Invoice_ID,ci.C_Order_ID, invoiceOpenAsOfDate(ci.C_INVOICE_ID, 0, Sysdate ) as OpenAMT from C_invoice ci  "
				+ "where ci.AD_CLIENT_ID = ? and ci.ISSOTRX = 'Y' and ci.DOCSTATUS in ('CO','CL') and trunc(ci.DATEACCT) <= ? ", new Object[] {p_Client_ID,p_DateTo}, get_Trx());
		log.warning("Table TXX_OPENINVOICE créée.");
		DB.executeUpdate("Delete from TXX_OPENINVOICE where OpenAMT = 0", get_Trx());
		DB.executeUpdate("DELETE fROM TXX_OPENPAYMENT", get_Trx());
		DB.executeUpdate("INSERT INTO TXX_OPENPAYMENT "
				+ "Select ci.C_BPARTNER_ID,ci.C_PAYMENT_ID,ci.C_ORDER_ID, PAYMENTAVAILABLE(ci.C_PAYMENT_ID ) as OpenAMT from C_PAYMENT ci "
				+ "where ci.AD_CLIENT_ID = ? and ci.C_CHARGE_ID is null and ci.DOCSTATUS in ('CO','CL') and ci.ISRECEIPT = 'Y' and trunc(ci.DATEACCT) <= ? ", new Object[] {p_Client_ID,p_DateTo}, get_Trx());
		log.warning("Table TXX_OPENPAYMENT créée.");
		DB.executeUpdate("delete from TXX_OPENPAYMENT where OpenAMT = 0", get_Trx());
		//OPEN INVOICE par tiers
		DB.executeUpdate("delete from TXX_OPENINVOICE_GROUP PURGE", get_Trx());
		DB.executeUpdate("INSERT INTO TXX_OPENINVOICE_GROUP Select C_BPARTNER_ID, sum(OpenAMT) as OpenAMT  from TXX_OPENINVOICE group by C_BPARTNER_ID", get_Trx());

		//OPEN PAYMENT par tiers
		DB.executeUpdate("delete from TXX_OPENPAYMENT_GROUP", get_Trx());
		DB.executeUpdate("INSERT INTO TXX_OPENPAYMENT_GROUP  Select C_BPARTNER_ID, sum(OpenAMT) as OpenAMT  from TXX_OPENPAYMENT group by C_BPARTNER_ID", get_Trx());
		
		String sql = "Select C_BPARTNER_ID, C_INVOICE_ID, C_PAYMENT_ID, OPENAMT "
				+ "from (Select t2.C_BPARTNER_ID, t2.C_INVOICE_ID,null as C_PAYMENT_ID, t2.OPENAMT from TXX_OPENINVOICE t2 "
				+ "union Select t1.C_BPARTNER_ID,null as C_INVOICE_ID, t1.C_PAYMENT_ID, t1.OPENAMT from TXX_OPENPAYMENT t1)tx "
				+ "where exists (Select g1.C_BPARTNER_ID from TXX_OPENINVOICE_GROUP g1 "
				+ "inner join TXX_OPENPAYMENT_GROUP g2 on g1.C_BPARTNER_ID = g2.C_BPARTNER_ID "
				+ "where g1.OPENAMT - NVL(g2.OPENAMT,0) = 0 and tx.C_BPARTNER_ID = g1.C_BPARTNER_ID) Order By C_BPARTNER_ID" ;
		
		log.warning("Affectation en masse Factures et Paiements");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<AllocationUtil> allocs = new ArrayList<AllocationUtil>();
		ArrayList<MAllocationHdr> hdrs = new ArrayList<MAllocationHdr>();
		int nbInvPay = 0;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			rs = pstmt.executeQuery();
			int OLD_BPARTNER_ID = 0;
			while (rs.next()){
				AllocationUtil alu = new AllocationUtil();
				alu.setC_Bpartner_ID(rs.getInt("C_BPARTNER_ID"));
				alu.setOpenAmt(rs.getBigDecimal("OPENAMT"));
				if(rs.getString("C_INVOICE_ID")!=null)
				{
					alu.setC_Invoice_ID(rs.getInt("C_INVOICE_ID"));
				}	
				if(rs.getString("C_PAYMENT_ID")!=null)
				{
					alu.setC_Payment_ID(rs.getInt("C_PAYMENT_ID"));
				}
				allocs.add(alu);
			}
			MAllocationHdr hdr = null;
			for (int i = 0; i < allocs.size(); i++) {
				AllocationUtil alu = allocs.get(i);
				
				if(alu.getC_Bpartner_ID()!=OLD_BPARTNER_ID)
				{
					OLD_BPARTNER_ID = alu.getC_Bpartner_ID();
					hdr = new MAllocationHdr(getCtx(),true,DateTrx,102, getCtx().getContext( "#AD_User_Name" ), get_Trx());
					hdr.setAD_Org_ID(Org_ID);
					hdr.setDescription("Affectation Auto");
					if( hdr.get_ID() == 0 && !hdr.save() )
					{
						log.log( Level.SEVERE, "Impossible de générer l'affectation" );
						get_Trx().rollback();
						get_Trx().close();
						DB.closeResultSet(rs);
						DB.closeStatement(pstmt);
						pstmt = null;
						return null;
					}
					hdrs.add(hdr);
					nbInvPay ++;
				}
				MAllocationLine aLine = new MAllocationLine( hdr, alu.getOpenAmt(), Env.ZERO, Env.ZERO, Env.ZERO );
				
				if(alu.getC_Invoice_ID()>0)
				{
					aLine.setDocInfo(alu.getC_Bpartner_ID(), 0, alu.getC_Invoice_ID());
				}
				if(alu.getC_Payment_ID()>0)
				{
					aLine.setC_BPartner_ID(OLD_BPARTNER_ID);
					aLine.setPaymentInfo(alu.getC_Payment_ID(), 0);
				}
				if( !aLine.save() )
					log.log( Level.SEVERE, "Impossible de créer la ligne d'affectation" );
				
			}
		}

		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}	
		finally{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
			pstmt = null;
		}
		
		sql = "Select t2.C_BPARTNER_ID, t2.C_INVOICE_ID, null as C_PAYMENT_ID, t2.OPENAMT from TXX_OPENINVOICE t2 "
				+ "where not exists (Select 1 from TXX_OPENPAYMENT_GROUP x1 where x1.C_BPARTNER_ID = t2.C_BPARTNER_ID) "
				+ "and exists (select 1 from TXX_OPENINVOICE_GROUP x2 where x2.C_BPARTNER_ID = t2.C_BPARTNER_ID and x2.OPENAMT = 0 ) "
				+ "Order By t2.C_BPARTNER_ID" ;
		//commit
		log.warning("Affectation en masse Factures");
		
		pstmt = null;
		rs = null;
		allocs = new ArrayList<AllocationUtil>();
		//hdrs = new ArrayList<MAllocationHdr>();
		int nbInv = 0;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int OLD_BPARTNER_ID = 0;
			rs = pstmt.executeQuery();
			while (rs.next()){
				AllocationUtil alu = new AllocationUtil();
				alu.setC_Bpartner_ID(rs.getInt("C_BPARTNER_ID"));
				alu.setOpenAmt(rs.getBigDecimal("OPENAMT"));
				if(rs.getString("C_INVOICE_ID")!=null)
				{
					alu.setC_Invoice_ID(rs.getInt("C_INVOICE_ID"));
				}
				allocs.add(alu);
			}
			MAllocationHdr hdr = null;
			for (int i = 0; i < allocs.size(); i++) {
				AllocationUtil alu = allocs.get(i);
				
				if(alu.getC_Bpartner_ID()!=OLD_BPARTNER_ID)
				{
					hdr = null;
					OLD_BPARTNER_ID = alu.getC_Bpartner_ID();
					hdr = new MAllocationHdr(getCtx(),true,DateTrx,102, getCtx().getContext( "#AD_User_Name" ), get_Trx());
					hdr.setAD_Org_ID(Org_ID);
					hdr.setDescription("Affectation Auto");
					if( hdr.get_ID() == 0 && !hdr.save() )
					{
						log.log( Level.SEVERE, "Impossible de générer l'affectation" );
						get_Trx().rollback();
						get_Trx().close();
						DB.closeResultSet(rs);
						DB.closeStatement(pstmt);
						pstmt = null;
						return null;
					}
					hdrs.add(hdr);
					nbInv ++;
				}
				MAllocationLine aLine = new MAllocationLine( hdr, alu.getOpenAmt(), Env.ZERO, Env.ZERO, Env.ZERO );
				
				if(alu.getC_Invoice_ID()>0)
				{
					aLine.setDocInfo(alu.getC_Bpartner_ID(), 0, alu.getC_Invoice_ID());
				}
				if( !aLine.save() )
					log.log( Level.SEVERE, "Impossible de créer la ligne d'affectation" );
				
			}	
		}

		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}	
		finally{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
			pstmt = null;
		}
		
		sql = "Select t2.C_BPARTNER_ID, null as C_INVOICE_ID, t2.C_PAYMENT_ID, t2.OPENAMT from TXX_OPENPAYMENT t2 "
				+ "where not exists (Select 1 from TXX_OPENINVOICE_GROUP x1 where x1.C_BPARTNER_ID = t2.C_BPARTNER_ID) "
				+ "and exists (select 1 from TXX_OPENPAYMENT_GROUP x2 where x2.C_BPARTNER_ID = t2.C_BPARTNER_ID and x2.OPENAMT = 0 ) "
				+ "Order By t2.C_BPARTNER_ID" ;
		
		log.warning("Affectation en masse Paiements");
		
		pstmt = null;
		rs = null;
		allocs = new ArrayList<AllocationUtil>();
		//hdrs = new ArrayList<MAllocationHdr>();
		int nbPay = 0;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int OLD_BPARTNER_ID = 0;
			rs = pstmt.executeQuery();
			while (rs.next()){
				AllocationUtil alu = new AllocationUtil();
				alu.setC_Bpartner_ID(rs.getInt("C_BPARTNER_ID"));
				alu.setOpenAmt(rs.getBigDecimal("OPENAMT"));
				if(rs.getString("C_PAYMENT_ID")!=null)
				{
					alu.setC_Payment_ID(rs.getInt("C_PAYMENT_ID"));
				}
				allocs.add(alu);
			}
			MAllocationHdr hdr = null;
			for (int i = 0; i < allocs.size(); i++) {
				AllocationUtil alu = allocs.get(i);
				
				if(alu.getC_Bpartner_ID()!=OLD_BPARTNER_ID)
				{
					hdr = null;
					OLD_BPARTNER_ID = alu.getC_Bpartner_ID();
					hdr = new MAllocationHdr(getCtx(),true,DateTrx,102, getCtx().getContext( "#AD_User_Name" ), get_Trx());
					hdr.setAD_Org_ID(Org_ID);
					hdr.setDescription("Affectation Auto");
					if( hdr.get_ID() == 0 && !hdr.save() )
					{
						log.log( Level.SEVERE, "Impossible de générer l'affectation" );
						get_Trx().rollback();
						get_Trx().close();
						DB.closeResultSet(rs);
						DB.closeStatement(pstmt);
						pstmt = null;
						return null;
					}
					hdrs.add(hdr);
					nbPay ++;
				}
				MAllocationLine aLine = new MAllocationLine( hdr, alu.getOpenAmt(), Env.ZERO, Env.ZERO, Env.ZERO );
				aLine.setC_BPartner_ID(OLD_BPARTNER_ID);
				if(alu.getC_Payment_ID()>0)
				{
					aLine.setPaymentInfo(alu.getC_Payment_ID(), 0);
				}
				if( !aLine.save() )
					log.log( Level.SEVERE, "Impossible de créer la ligne d'affectation" );
			}	
		}

		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}	
		finally{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
			pstmt = null;
		}
		
		for (int i = 0; i < hdrs.size(); i++) {
			DocumentEngine.processIt(hdrs.get(i), DocActionConstants.ACTION_Complete);
			hdrs.get(i).save();
		}
		
		addLog(nbInvPay+" affectations avec factures et paiements");
		addLog(nbInv+" affectations avec factures");
		addLog(nbPay+" affectations avec paiements");
		return "Traitement terminé";
	}

}
