package com.audaxis.compiere.eurocenter.process;

import gs1.ecom.ecom_common.xsd._3.EcomAttributeValuePairListType;
import gs1.ecom.ecom_common.xsd._3.PaymentTermsDiscountType;
import gs1.ecom.ecom_common.xsd._3.PaymentTermsType;
import gs1.ecom.ecom_common.xsd._3.TransactionalPartyType;
import gs1.ecom.invoice.xsd._3.InvoiceAllowanceChargeType;
import gs1.ecom.invoice.xsd._3.InvoiceLineItemType;
import gs1.ecom.invoice.xsd._3.InvoiceMessageType;
import gs1.ecom.invoice.xsd._3.InvoiceType;
import gs1.ecom.invoice.xsd._3.ObjectFactory;
import gs1.shared.shared_common.xsd._3.DateTimeRangeType;
import gs1.shared.shared_common.xsd._3.EntityIdentificationType;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.compiere.model.MClient;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.MSequence;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.EMail;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.process.model.ImportInvoiceFile;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;

public class ImportXMLInvNOBILIA extends SvrProcessExtended{

	//Evolution #83301
	private String sql_insert = "INSERT INTO I_Invoice(AD_Client_ID,AD_Org_ID,IsSoTrx,C_Currency_ID,POReference," +
			"ZZ_NobiliaCreditTerm,VendorDocNum,ZZ_FileName,ZZ_VatNumber,DateInvoiced,DateAcct,ZZ_Buyergnl,ProductValue," +
			"QtyOrdered,PriceActual,C_Tax_ID,TaxAmt,I_Invoice_ID,InvoiceTotalAmt, PaymentTermValue, DocTypeName, Z_ProductTax, ZZ_Sellergnl, ZZ_ShipTognl, ZZ_PODocNo,ZZ_PCTDiscount, TaxID) "+
			"VALUES (?,?,'N',?,?,?,?,?,?,?,?,?,?,?,round(?,2),?,?,?,round(?,2),?,?,?,?,?,?,?,?)";
	private HashMap<String, Integer> buyer_ClientID = new HashMap<String, Integer>() ; 
	private String sql = "Select distinct Z_GLN, AD_Client_ID from AD_Org where Z_GLN is not null and AD_Client_ID = ? order by AD_Client_ID DESC";

	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	private JAXBContext jaxbContext = null;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal)element.getParameter()).intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		//Arraylist buyer avec AD_Client
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try
		{
			stmt = DB.prepareStatement(sql.toString(), null);
			stmt.setInt(1, m_AD_Client_ID);
			rs = stmt.executeQuery();
			while (rs.next())
			{
				buyer_ClientID.put(rs.getString(1), rs.getInt(2));
			}
			jaxbContext = JAXBContext.newInstance(InvoiceMessageType.class);
		}catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally 
		{
			Util.closeCursor(stmt, rs);
		}
		
		
	}
	
	@Override
	protected String doIt() throws Exception {
		int nbFile = 0;
		File folder = new File(Msg.getMsg(m_ctx, "EC_INVOICE_IN"));
		File folder2 = new File(Msg.getMsg(m_ctx, "EC_INVOICE_IN2"));
		//File folder = new File("C:\\tmp\\TEST");
		if(folder == null || !folder.exists())
			throw new CompiereException("Répertoire d'entrée Nobilia non trouvé : "+Msg.getMsg(m_ctx, "EC_INVOICE_IN"));
		if(folder2 == null || !folder2.exists())
			throw new CompiereException("Répertoire d'entrée BaseWare non trouvé : "+Msg.getMsg(m_ctx, "EC_INVOICE_IN2"));
		File folderArchive = new File(Msg.getMsg(m_ctx, "EC_INVOICE_IN_BACKUP"));
		File folderArchive2 = new File(Msg.getMsg(m_ctx, "EC_INVOICE_IN_BACKUP2"));
		//File folderArchive = new File("C:\\tmp\\TEST\\BACKUP");
		if(folderArchive == null || !folderArchive.exists())
			throw new CompiereException("Veuillez créer un sous répertoire de backup Nobilia : "+Msg.getMsg(m_ctx, "EC_INVOICE_IN_BACKUP"));
		if(folderArchive2 == null || !folderArchive2.exists())
			throw new CompiereException("Veuillez créer un sous répertoire de backup BasWare : "+Msg.getMsg(m_ctx, "EC_INVOICE_IN_BACKUP2"));
		ArrayList<ImportInvoiceFile> filesToProcess = new ArrayList<ImportInvoiceFile>();
		for (File file : folder.listFiles()) {
			if(!file.isDirectory() && FilenameUtils.getExtension(file.getName()).equalsIgnoreCase("xml")) {
				if(file.length()>0){
					System.out.println("Ajout : "+file.getName());	
					filesToProcess.add(new ImportInvoiceFile(file,"Nobilia"));
				}
				else{
					System.out.println("Copy Backup + Delete : "+file.getName());
					FileUtils.copyFile(file, new File(folderArchive+File.separator+file.getName()));
					FileUtils.deleteQuietly(file);
				}
			}
		}
		for (File file : folder2.listFiles()) {
			if(!file.isDirectory() && FilenameUtils.getExtension(file.getName()).equalsIgnoreCase("xml")) {
				if(file.length()>0){
					System.out.println("Ajout : "+file.getName());	
					filesToProcess.add(new ImportInvoiceFile(file,"BaseWare"));
				}
				else{
					System.out.println("Copy Backup + Delete : "+file.getName());
					FileUtils.copyFile(file, new File(folderArchive2+File.separator+file.getName()));
					FileUtils.deleteQuietly(file);
				}
			}
		}
		int i_invs= 0;
		
		int fileNotP = 0;
		for (ImportInvoiceFile Invfile : filesToProcess) {
			File ff = Invfile.getFile();
			int x = processFile(Invfile);
			if(x==-1)
			{
				fileNotP++;
				continue;
			}
			i_invs = i_invs + x ;
			if(Invfile.getType().equals("Nobilia")){
			try{
				
				if(!(new File(folderArchive+File.separator+ff.getName())).exists())
				{
					FileUtils.copyFile(ff, new File(folderArchive+File.separator+ff.getName()));
					FileUtils.deleteQuietly(ff);
				}else
					FileUtils.deleteQuietly(ff);
				
			
				//boolean success = file.renameTo(); 
			}catch (Exception e) {
				throw new CompiereException("File not moved from ("+folderArchive+File.separator+ff.getName()+")");
			}			
		}
			if(Invfile.getType().equals("BaseWare")){
				try{
					
					if(!(new File(folderArchive2+File.separator+ff.getName())).exists())
					{
						FileUtils.copyFile(ff, new File(folderArchive2+File.separator+ff.getName()));
						FileUtils.deleteQuietly(ff);
					}else
						FileUtils.deleteQuietly(ff);
					
				
					//boolean success = file.renameTo(); 
				}catch (Exception e) {
					throw new CompiereException("File not moved from ("+folderArchive2+File.separator+ff.getName()+")");
				}			
			}
			nbFile++;	
		}
		commit();
		
//		String facG = "";
		int m_Process_ID = DB.getSQLValue(get_Trx(), "select max(ad_process_id) from ad_process where classname like 'org.compiere.process%ImportInvoice%' "); 
        MProcess process = new MProcess(getCtx(), m_Process_ID, get_Trx());
        MPInstance instance = new MPInstance(getCtx(), m_Process_ID, -1);
        if (!instance.save()) {
            addLog("ImportInvoice Process No Instance");
            return Msg.getMsg(getCtx(), "ProcessFailed");
        }
        ProcessInfo processInfo = new ProcessInfo("Generate Invoice from Shipment",
                m_Process_ID);
        processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
        ProcessInfoParameter pip1 = new ProcessInfoParameter("AD_Client_ID", new BigDecimal( m_AD_Client_ID), null, null, null);
        ProcessInfoParameter pip2 = new ProcessInfoParameter("AD_Org_ID", new BigDecimal(getCtx().getAD_Org_ID()), null, null, null);
        ProcessInfoParameter pip3 = new ProcessInfoParameter("DocAction", "CO", null, null, null);
        ProcessInfoParameter pip4 = new ProcessInfoParameter("DeleteOldImported", "Y", null, null, null);
        pipList.add(pip1);
        pipList.add(pip2);
        pipList.add(pip3);
        pipList.add(pip4);
        
        ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList.toArray(new ProcessInfoParameter[pipList.size()]);
        processInfo.setParameter(parameters);
        process.processIt(processInfo, get_Trx());
        if (processInfo.isError()) {
            addLog(processInfo.getSummary());
            return Msg.getMsg(getCtx(), "ProcessFailed");
        }

//        int[] ids = processInfo.getIDs();
//        if (ids == null || ids.length == 0)
//        	facG = "Facture générée";

        String msg_fileNotP = " - Fichiers non traités : "+fileNotP;
        String msg_I_invs = " - Nombre d'enregistrements I_Invoice créés: " + i_invs ;
        String msg_C_Invs = " - Nombre de factures créées: \n" + processInfo.getLogInfo();
        
        
        String toMail= Msg.getMsg(m_ctx, "EC_INVOICE_IN_MAIL");
        MClient client = MClient.get(getCtx(), m_AD_Client_ID);
		EMail email = client.createEMail(toMail, "", "Import Factures Nobilia", null);
		if(email!=null)
		{
			String message = "Process terminé \n" +msg_I_invs + "\n" + msg_C_Invs+"\n"+msg_fileNotP;
			email.setSubject ("Import Factures Nobilia");
			email.setMessageText (message);

			String msg = email.send();
			if (msg.equals(EMail.SENT_OK))
				addLog ("@RequestActionEMailOK@ - " + toMail);
			else
				addLog (" @RequestActionEMailError@ " + " - " + toMail);
		}
		return "Process terminé \n" +msg_I_invs + "\n" + msg_C_Invs+"\n"+msg_fileNotP;
	}

	private int processFile(ImportInvoiceFile Invfile) throws Exception{
		File ff = Invfile.getFile();
		System.out.println("Traitement fichier : "+ff.getName());
		int row = 0;
		String folderIn = null;
		if(Invfile.getType().equals("Nobilia"))
			folderIn = Msg.getMsg(m_ctx, "EC_INVOICE_IN");
		if(Invfile.getType().equals("BaseWare"))
			folderIn = Msg.getMsg(m_ctx, "EC_INVOICE_IN2");
		//String folderIn = "C:\\tmp\\TEST";
		
		String AdditionalPartyIdentification = "";
		Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
		ObjectFactory o = new ObjectFactory();
		InvoiceMessageType xmlObject = o.createInvoiceMessageType();
		xmlObject = (InvoiceMessageType) jaxbUnmarshaller.unmarshal(ff);

		InvoiceType invoice = xmlObject.getInvoice().get(0);
		String v_C_Currency_ID = getCurrency(getCtx(), invoice.getInvoiceCurrencyCode().getValue());
		EntityIdentificationType v_InvoiceIdentification = invoice.getInvoiceIdentification();
		String DiscountType = null;
		double DiscountPercent = -1;
		if(invoice.getPaymentTerms().size()>0)
		{
			PaymentTermsType v_PaymentTerms = invoice.getPaymentTerms().get(0);
			PaymentTermsDiscountType v_PaymentTermsDiscount = v_PaymentTerms.getPaymentTermsDiscount().get(0);
			DiscountType = v_PaymentTermsDiscount.getDiscountType();
			DiscountPercent = v_PaymentTermsDiscount.getDiscountPercent();
		}
		EcomAttributeValuePairListType v_AvpList =  invoice.getAvpList();
		TransactionalPartyType v_Seller = invoice.getSeller();
		DateTimeRangeType v_InvoicingPeriod = invoice.getInvoicingPeriod();
		TransactionalPartyType v_Buyer = invoice.getBuyer();
		TransactionalPartyType v_Shipto = invoice.getShipTo();
		
		//String allowanceCharges = "";
	 	//for(InvoiceAllowanceChargeType list : invoice.getInvoiceAllowanceCharge() )
		//{
	 	//	allowanceCharges += list.getAllowanceChargeType().getValue() + "," +list.getAllowanceChargeAmount().getValue() + ";" ;
		//}
		
		if(buyer_ClientID.get(v_Buyer.getGln())==null)
			return -1;
			
		if(buyer_ClientID.get(v_Buyer.getGln())!=m_AD_Client_ID)
			return -1;
		if(v_Seller.getAdditionalPartyIdentification().size()>0)
			AdditionalPartyIdentification = v_Seller.getAdditionalPartyIdentification().get(0).getValue();
		
		//94095
		HashMap<String, Double> TaxCharges = new HashMap<String, Double>();
		String allowanceCharges = "";
		if(invoice.getInvoiceIdentification() != null){
			for (InvoiceLineItemType line : invoice.getInvoiceLineItem()) {
				
			}
		}
		
		if(invoice.getInvoiceIdentification() != null){
			for (InvoiceLineItemType line : invoice.getInvoiceLineItem()) {
				allowanceCharges = "";
				TaxCharges = new HashMap<String, Double>();
				for(InvoiceAllowanceChargeType list : line.getInvoiceAllowanceCharge()  )
				{
					if(list.getAllowanceChargeType().getValue().trim().length()==0)
						continue;
					if(TaxCharges.containsKey(list.getAllowanceChargeType().getValue()))
					{
						double val = TaxCharges.get(list.getAllowanceChargeType().getValue()).doubleValue();
						val = val+Double.parseDouble(Float.toString(list.getAllowanceChargeAmount().getValue()));
						TaxCharges.put(list.getAllowanceChargeType().getValue(),val);
					}else
						TaxCharges.put(list.getAllowanceChargeType().getValue(), Double.parseDouble(Float.toString(list.getAllowanceChargeAmount().getValue())));
				}
				double amtCharge = 0;
				if(!TaxCharges.isEmpty()){
					Set<Entry<String, Double>> setMap= TaxCharges.entrySet();
			      Iterator<Entry<String, Double>> it = setMap.iterator();
			      while(it.hasNext()){
			    	 if(allowanceCharges!=null && allowanceCharges.length()>0)
			    		 allowanceCharges = allowanceCharges+";";
			         Entry<String, Double> e = it.next();
			         allowanceCharges+=e.getKey()+ ","+e.getValue() ;
			         amtCharge+=e.getValue() ;
			      }
				}
				BigDecimal unitPrice = Env.ZERO;
				if(line.getAmountExclusiveAllowancesCharges()!=null){
					if(line.getInvoicedQuantity()==null || line.getInvoicedQuantity().getValue().intValue() == 1)
						unitPrice = new BigDecimal((line.getAmountExclusiveAllowancesCharges().getValue()));
					else
						unitPrice = new BigDecimal((line.getAmountExclusiveAllowancesCharges().getValue())/(line.getInvoicedQuantity()==null?1: line.getInvoicedQuantity().getValue().intValue()));
					unitPrice = unitPrice.setScale(2, RoundingMode.HALF_UP);
				}
				else
				{
					if(line.getInvoicedQuantity()==null || line.getInvoicedQuantity().getValue().intValue() == 1)
						unitPrice = new BigDecimal((line.getAmountInclusiveAllowancesCharges().getValue()));
					else
						unitPrice = new BigDecimal((line.getAmountInclusiveAllowancesCharges().getValue())/(line.getInvoicedQuantity()==null?1: line.getInvoicedQuantity().getValue().intValue()));
					unitPrice = unitPrice.setScale(2, RoundingMode.HALF_UP);
					unitPrice = unitPrice.subtract(new BigDecimal(amtCharge));
					unitPrice = unitPrice.setScale(2, RoundingMode.HALF_UP);
				}
				//unitPrice = unitPrice.setScale(2, RoundingMode.CEILING);
				PreparedStatement pstmt = DB.prepareStatement(sql_insert, get_Trx());
				pstmt.setInt(1, buyer_ClientID.get(v_Buyer.getGln()));
				pstmt.setInt(2, 0);
				pstmt.setInt(3, Integer.parseInt(v_C_Currency_ID));
				pstmt.setString(4, v_InvoiceIdentification.getEntityIdentification());
				pstmt.setString(5, DiscountType);
				pstmt.setString(6, invoice.getNote()!=null ?invoice.getNote().getValue():null);
				pstmt.setString(7, folderIn+File.separator+v_AvpList.getEComStringAttributeValuePairList().get(0).getValue());
				//94095
				//pstmt.setString(8, v_Seller.getDutyFeeTaxRegistration().get(0).getDutyFeeTaxRegistrationID().getValue());
				pstmt.setString(8,v_Seller.getGln()+(AdditionalPartyIdentification));
				pstmt.setDate(9, toDate(v_InvoicingPeriod.getBeginDate().toGregorianCalendar()));
				pstmt.setDate(10, toDate(v_InvoicingPeriod.getBeginDate().toGregorianCalendar()));
				pstmt.setString(11, v_Buyer.getGln());
				pstmt.setString(12, line.getTransactionalTradeItem().getTradeItemDescription().getValue());
				pstmt.setInt(13,line.getInvoicedQuantity()==null?1: line.getInvoicedQuantity().getValue().intValue());
				pstmt.setDouble(14,unitPrice.doubleValue());
				pstmt.setInt(15, 0);
				pstmt.setInt(16, 0);
				pstmt.setInt(17, MSequence.getNextID(m_AD_Client_ID, "I_Invoice"));
				pstmt.setDouble(18, invoice.getInvoiceTotals().getTotalInvoiceAmount().getValue());
				pstmt.setString(19, DiscountType);
				pstmt.setString(20, invoice.getInvoiceType().getValue());
				pstmt.setString(21, allowanceCharges);
				pstmt.setString(22, v_Seller.getGln());
				pstmt.setString(23, v_Shipto.getGln());
				pstmt.setString(24, line.getPurchaseOrder()!=null ? line.getPurchaseOrder().getEntityIdentification():null); //Evolution #86715
				pstmt.setDouble(25, DiscountPercent);
				pstmt.setString(26, v_Buyer.getDutyFeeTaxRegistration().get(0).getDutyFeeTaxRegistrationID().getValue());
				
				row = row + pstmt.executeUpdate();
				if(row%100==0)
					commit();
			}	
		}
		return row;
	}

	public void removeLineFromFile(String f, int toRemove) throws IOException {

		File tmp = File.createTempFile("tmp", "");

		BufferedReader br = new BufferedReader(new FileReader(f));
		BufferedWriter bw = new BufferedWriter(new FileWriter(tmp));

		for (int i = 1; i < toRemove; i++)
			bw.write(String.format("%s%n", br.readLine()));

		String l;
		if(!(l = br.readLine()).contains(".dtd"))
			bw.write(String.format("%s%n", l));

		while (null != (l = br.readLine()))
			bw.write(String.format("%s%n", l));

		br.close();
		bw.close();

		File oldFile = new File(f);
		if (oldFile.delete())
			tmp.renameTo(oldFile);
	}

	public String getCurrency(Ctx ctx,String isoCode)
	{

		String sql = "SELECT C_Currency_ID FROM C_Currency WHERE IsActive = 'Y' AND ISO_CODE = ?";
		int retValue = DB.getSQLValue(get_Trx(), sql,isoCode);
		return ""+retValue;
	}
	
	 public static java.sql.Date toDate(GregorianCalendar gregorianCalendar){
	        if(gregorianCalendar == null) {
	            return null;
	        }
 	        java.sql.Date date = new java.sql.Date(gregorianCalendar.getTimeInMillis());

	        return date;
	    }
}