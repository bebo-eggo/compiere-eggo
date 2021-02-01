package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MProduct;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;  
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MInvoice; 

public class PromoCheck extends SvrProcess {       
	
	private Timestamp 	invoiceDate 	= null; 
	private String 		promoValue 		= null; 
	private int 		c_bp_group_id 	= -1; 
	private Timestamp 	dateFrom 		= null;
	private Timestamp 	dateTo 			= null;
	private String 		targetDoc 		= null; 
	
	private ArrayList<Integer> 			invoices			= new ArrayList<Integer>();         
	private HashMap<Integer, Integer> 	serviceProductMap 	= new HashMap<Integer, Integer>(); 
	private HashMap<Integer, String> 	promoProductMap 	= new HashMap<Integer, String>();
	private int 						C_DocTypeTarget_ID 	= -1;     
	
	private HashMap<Integer, ArrayList<BigDecimal>> matrix = null;    
	private BigDecimal OneHundred = new BigDecimal(100);  

	@Override
	protected void prepare() {
		
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			
			if (element.getParameter() == null)  
				;

			if (element.getParameterName().equals("InvoiceDate"))    
				invoiceDate = (Timestamp) element.getParameter();
			else if (element.getParameterName().equals("PromoValue"))
				promoValue = (String) element.getParameter();
			else if (element.getParameterName().equals("C_BP_Group_ID")) 
				c_bp_group_id = element.getParameterAsInt(); 
			else if (element.getParameterName().equals("FromDate"))
				dateFrom = (Timestamp) element.getParameter();
			else if (element.getParameterName().equals("DateTo"))
				dateTo = (Timestamp) element.getParameter();
			else if (element.getParameterName().equals("TargetDoc"))
				targetDoc = (String) element.getParameter();
			else 
				log.log(Level.SEVERE, "Unknown Parameter: " + element.getParameterName());  
		}  
		 
		fillProductService();  							// load Partners Service Products				 
		fillActionPromoProduct();  		 				// load 'Action Promoteur %' Products	 		
		C_DocTypeTarget_ID = getC_DocTypeTarget_ID();   // load Target Invoices C_DocTypeTarget_ID 
		if(C_DocTypeTarget_ID == -1){ 
			addLog("No Valid C_DocTypeTarget_ID ");  
			return;  
		}
	}
	
	 
	// Load 'Action Promoteur %' like  Products 
	private void fillActionPromoProduct() {    
		
		getCtx().setBatchMode(false);   
		
		String sql = "select m_product_id, name from m_product " +  
					 "where isactive ='Y' and name like 'Action Promoteur %' and ad_client_id = " + getAD_Client_ID();
		Object[][] result = QueryUtil.executeQuery(sql, null);    
		if(result != null && result.length > 0)   
			for(Object[] record : result){
				if(record!=null){
					if(record[0] != null && record[1] != null){
						int productID = ((BigDecimal)record[0]).intValue();   
						String name = record[1].toString();  
						promoProductMap.put(productID,name);    	 			
					} 
				}  
			} 
 	} 

	@Override
	protected String doIt() throws Exception {

		StringBuffer sqlBuffer = new StringBuffer("select inv.c_invoice_id from c_invoice inv ");
			sqlBuffer.append("inner join c_bpartner bp on inv.c_bpartner_id = bp.c_bpartner_id and bp.isactive = 'Y' ");
			sqlBuffer.append("inner join c_order o on inv.c_order_id = o.c_order_id and o.isactive = 'Y' ");
			sqlBuffer.append("where inv.isactive ='Y' and inv.issotrx='Y' and inv.isInvoicePromoChecked='N' and inv.ad_client_id = " + getAD_Client_ID());      

		if (invoiceDate != null) 
			sqlBuffer.append(" and inv.dateinvoiced = ? ");        
		if (promoValue != null && !promoValue.equals("")) 
			sqlBuffer.append(" and bp.value = ? ");
		if (c_bp_group_id > 0)
			sqlBuffer.append(" and bp.c_bpartner_id in (select c_bpartner_id from c_bpartner where bp.c_bp_group_id = ?) "); 
		if (dateFrom != null)
			sqlBuffer.append(" and o.dateordered >= ? ");
		if (dateTo != null)
			sqlBuffer.append(" and o.dateordered <= ? ");  

		PreparedStatement pstmt = null;   
		try {
			pstmt = DB.prepareStatement(sqlBuffer.toString(), get_TrxName());
			int index = 0; 
			if (invoiceDate != null)
				pstmt.setTimestamp(++index, invoiceDate);  
			if (promoValue != null && !promoValue.equals(""))
				pstmt.setString(++index, promoValue); 
			if (c_bp_group_id > 0)
				pstmt.setInt(++index, c_bp_group_id);   
			if (dateFrom != null)
				pstmt.setTimestamp(++index, dateFrom);           
			if (dateTo != null)
				pstmt.setTimestamp(++index, dateTo);       
			
			ResultSet rs = pstmt.executeQuery(); 
			try {
				while (rs.next()) 
					invoices.add(rs.getInt(1));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  finally{
				Util.closeCursor(pstmt, rs);
			}
		} catch (SQLException e) {
			log.log(Level.SEVERE, sqlBuffer.toString(), e);  
		}
		
		MInvoice invoice = null;  
		MInvoiceLine [] invoiceLines ; 
		matrix = new HashMap<Integer, ArrayList<BigDecimal>>();  
		
		for (int i = 0; i < invoices.size(); i++) 
		{
			invoice = new MInvoice(getCtx(), invoices.get(i), get_Trx());   
			
			if(matrix.get(invoice.getC_BPartner_ID()) == null)
				matrix.put(invoice.getC_BPartner_ID(), new ArrayList<BigDecimal>());  
			
			invoiceLines = invoice.getLines(); 
			
			if(invoiceLines.length > 0)
				for(MInvoiceLine line : invoiceLines)  
				{ 
					if(isPromoProduct(invoice.getC_BPartner_ID(), line.getM_Product_ID()))			 // Action Promoteur X Product
					{
						// cerner la ligne sur dans Z_Catalog  
						StringBuffer bf = new StringBuffer(" select zc.z_percent from z_catalog zc where  zc.c_bpartner_id = ? ");  
						bf.append("and zc.isactive = 'Y' and ? <= zc.z_maxamount and ? >= zc.z_minamount and zc.ad_client_id = "+ getAD_Client_ID()) ;   
						
						final Object[] params = new Object[] {invoice.getC_BPartner_ID(),	line.getLineTotalAmt(), line.getLineTotalAmt() }; 						
						final Object[][] result = QueryUtil.executeQuery(bf.toString(), params);   
						BigDecimal percent = (BigDecimal)result[0][0];   
						
						if(percent != null && percent.compareTo(BigDecimal.ZERO) > 0)        
						{	// calculer le montant   
							matrix.get(invoice.getC_BPartner_ID()).add(calculateAmount(line.getLineTotalAmt(), percent));      
						}   					
					}
				}
		}
		
		// Generate   
		
		MInvoice invoiceDoc = null; 
		MInvoiceLine docLine = null;   
		MBPartner partner = null;  
		for(final Integer record : matrix.keySet())
		{     		
			if(matrix.get(record).size() > 0) 
			{  
				partner = new MBPartner(getCtx(), record, get_Trx());       
				
				invoiceDoc = new MInvoice(getCtx(), 0, get_Trx());  
				invoiceDoc.setAD_Org_ID(partner.getAD_Org_ID());     
				invoiceDoc.setBPartner(partner);        								// Tier Promoteur 
				invoiceDoc.setC_DocTypeTarget_ID(getC_DocTypeTarget_ID());    			// Type Document
				invoiceDoc.setDocStatus(DocActionConstants.STATUS_Drafted); 			// Create Drafted Invoice 
				invoiceDoc.setDateInvoiced(new Timestamp(new Date().getTime()));     	// Date Facture   
				invoiceDoc.save(get_Trx());     
				
				docLine = new MInvoiceLine(invoiceDoc);     
				docLine.setM_Product_ID(serviceProductMap.get(partner.get_ID()));   	// M_Product_ID
				docLine.setQty(1);														// Qty 
				docLine.setPrice(calculateNetAmount(partner.get_ID()));         
				
				if(docLine.save(get_Trx()))                    
				{	 
						if (targetDoc != null && targetDoc.equals("CO") && invoiceDoc != null) {
							if (DocumentEngine.processIt(invoiceDoc, DocActionConstants.ACTION_Complete)) {  
								invoiceDoc.save(get_Trx()); 
								invoice.set_Value("IsInvoicePromoChecked", "Y");    
								invoice.save(get_Trx());   
								addLog("la facture "+ invoiceDoc.getDocumentNo()+" est traitée avec succès pour le promoteur : " +  partner.getName()); 
							} else
								addLog("Traitement de la facture échouée ! : " + invoiceDoc.getProcessMsg()); 
						
						}else if (targetDoc != null && targetDoc.equals("RE") && invoiceDoc != null){
							if (DocumentEngine.processIt(invoiceDoc, DocActionConstants.STATUS_InProgress)) {   
								invoiceDoc.save(get_Trx()); 
								invoice.set_Value("IsInvoicePromoChecked", "Y");      
								invoice.save(get_Trx());     
								addLog("la facture "+ invoiceDoc.getDocumentNo() + " est traitée avec succès pour le promoteur : " +  partner.getName());  
							} else
								addLog("Traitement de la facture échouée ! : " + invoiceDoc.getProcessMsg());    
						
						}else if(invoiceDoc != null){
							invoiceDoc.save(get_Trx()); 
							addLog("la facture "+ invoiceDoc.getDocumentNo()+" est générée pour le promoteur  : " + partner.getName());
						}
							  
				}
			}
		}
		
		
		getCtx().setBatchMode(true);  
		return "process result";                
	}	
	
	private BigDecimal calculateAmount(BigDecimal lineAmt, BigDecimal percent){	
		BigDecimal ret = BigDecimal.ZERO; 
		if(lineAmt != null && percent != null &&  lineAmt.compareTo(BigDecimal.ZERO) > 0 && percent.compareTo(BigDecimal.ZERO) > 0)
			ret = lineAmt.multiply(percent.divide(OneHundred));        
		return ret; 
	}
	
	private BigDecimal calculateNetAmount(int c_BPartner_id){ 
		BigDecimal somme = BigDecimal.ZERO;  
		for(BigDecimal s : matrix.get(c_BPartner_id))
			if(s != null && s.compareTo(BigDecimal.ZERO) > 0) 
				somme = somme.add(s); 
		return somme;     
	}  
	
	private int getC_DocTypeTarget_ID() { 
		String str = Msg.getMsg(getCtx(), "Invoice_CDocTypeTarget");
		try {
			if (str != null && !str.equals(""))
				return Integer.valueOf(str);
		} catch (Exception e) {
			// do nothing
		}
		return -1;   
	}   
	
	// Get Partner Service Product 
	private void fillProductService(){        
		
 		String sql = "select c_bpartner_id, m_product_id from z_catalog " +   
					 "where isactive = 'Y' and ad_client_id =" + getAD_Client_ID();     
		Object[][] result = QueryUtil.executeQuery(sql, null);   
		if(result != null && result.length > 0)   
			for(Object[] record : result){
				if(record!=null){
					if(record[0] != null && record[1] != null){
						int f = ((BigDecimal)record[0]).intValue();   
						int s = ((BigDecimal)record[1]).intValue();   
						serviceProductMap.put(f,s); 	 			
					} 
				} 
			}
	}    
	
	private boolean isPromoProduct(int c_bpartner_id , int m_product_id ){    
		 MProduct product = new MProduct(getCtx(), m_product_id, get_Trx());  
		 MBPartner partner = new MBPartner(getCtx(), c_bpartner_id, get_Trx());   
		 for(Integer key : promoProductMap.keySet()){			
			String pname = promoProductMap.get(key);   	
			if(pname!= null && partner.getName() != null && pname.toLowerCase().contains(partner.getName().toLowerCase()) && key == product.get_ID()) 
				return true;  			
		 } 
			return false;    
	}
}
