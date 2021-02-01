package com.audaxis.compiere.eurocenter.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MProcess;
import org.compiere.model.X_Z_ProductTax;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.util.CompiereException;

import ru.compiere.report.RusReportStarter;

public class InvoiceUtil {

	public InvoiceUtil() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * Description : Si taxeCode != null, on force la création ou la MAJ de la ligne de taxe au montant amount. Si non, on crée les lignes suivant le paramètrage de l'article.
	 * @param ctx
	 * @param invoiceID ID de C_Invoice_ID (Mandatory)
	 * @param productID ID de M_Product_ID de la ligne de facture (Mandatory)
	 * @param partnerID ID du tiers de facuration (Mandatory)
	 * @param amout Montant TOTAL de la taxe pour la facture 
	 * @param taxeCode Code de la taxe à devoir créer pour la facture
	 * @param trx
	 */
	public static void addModifyRecupelLine(Ctx ctx, int invoiceID, int productID, int partnerID, double amout,String taxeCode, boolean auto,Trx trx){
		// If recupel exist make/Update Recupel Line
		if (productID > 0 && partnerID > 0){
			StringBuffer sql = 	new StringBuffer("select max(upper(nvl(substr(bp.taxid,1,2), c.countrycode))) ")
			.append("from c_bpartner bp ")
			.append("inner join c_bpartner_location bpl on bpl.c_bpartner_id = bp.c_bpartner_id " )
			.append("inner join c_location loc on loc.c_location_id = bpl.c_location_id ") 
			.append("inner join c_country c on c.c_country_id = loc.c_country_id ")
			.append("where bp.c_bpartner_id = ? and bpl.isactive = 'Y' ");
			
			int ref_ID  = DB.getSQLValue(trx, "Select AD_Reference_ID from AD_Reference where Name = 'ListProductTax' ");
			String ctry = DB.getSQLValueString(trx, sql.toString(), partnerID);
			if ("BE".equalsIgnoreCase(ctry) || "LU".equalsIgnoreCase(ctry)){
				//si taxeCode<> null, forcer l'ajout de la taxes.
				if(taxeCode!=null)
				{
					sql = new StringBuffer("select max(c_charge_id) from C_Charge where AD_Client_ID = ? "
							+ "and ListProductTax = ? ");
					ArrayList<Object> pa = new ArrayList<Object>();
					pa.add(ctx.getAD_Client_ID());
					pa.add(taxeCode);
					int chargeID = DB.getSQLValue(trx, sql.toString(), pa.toArray());
					if (chargeID > 0 ) {
						sql = 	new StringBuffer("select c_invoiceLine_id from c_invoiceline where c_invoice_id = ? and c_charge_id = ? ");
						int invLineID = DB.getSQLValue(trx, sql.toString(), invoiceID,chargeID);
						if (invLineID < 1){  // Create New Line
							MInvoiceLine invrecup = new MInvoiceLine(new MInvoice(ctx, invoiceID, trx));
							invrecup.setC_Charge_ID(chargeID);
							invrecup.setQty(1);
							invrecup.setPrice(new BigDecimal(amout));
							invrecup.setLineNetAmt(new BigDecimal(amout)); // qty always 1 ( for compute Tax)
							invrecup.setTax();
							invrecup.setTaxAmt();
							invrecup.save(trx);
						}
						else {				 // Modify New Line
							MInvoiceLine invrecup = new MInvoiceLine(ctx,invLineID,trx);
							invrecup.setPrice(new BigDecimal(amout));
							invrecup.setLineNetAmt(new BigDecimal(amout)); // // qty always 1 ( for compute Tax)
							invrecup.setTaxAmt();
							invrecup.save(trx);
						}
					}
				}else if(auto){
				//Boucle sur les taxes de l'article
				int ids[] = X_Z_ProductTax.getAllIDs("Z_ProductTax", " IsActive = 'Y' and M_Product_ID = "+productID, trx);
				for (int i = 0; i < ids.length; i++) {
					X_Z_ProductTax pt = new X_Z_ProductTax(ctx, ids[i], trx);
					//Aller chercher le prix plus la taxe
					sql = new StringBuffer("select max(c_charge_id) from C_Charge where AD_Client_ID = ? "
							+ "and ListProductTax = (Select Value from AD_Ref_list where AD_Reference_ID = ? AND UPPER(AD_Ref_list.NAME) = upper(?)) ");
					ArrayList<Object> pa = new ArrayList<Object>();
					pa.add(ctx.getAD_Client_ID());
					pa.add(ref_ID);
					pa.add(pt.getName());
					int chargeID = DB.getSQLValue(trx, sql.toString(), pa.toArray());
					if (chargeID > 0 ) {
						//Connaitre le somme pour ce C_Tax 
						sql =new StringBuffer("Select Sum(QtyInvoiced*zpt.PriceStd) from c_invoiceline inner join Z_ProductTax zpt on zpt.M_Product_ID = c_invoiceline.M_Product_ID and UPPER(zpt.Name) = UPPER('"+pt.getName()+"')"
								+ " where c_invoice_id = ? ");
						BigDecimal sum = DB.getSQLValueBD(trx, sql.toString(), invoiceID);
						if(sum == null)
							continue;
						double sumtax = sum.doubleValue();
						if(amout!=0)
							sumtax = amout;
						sql = 	new StringBuffer("select c_invoiceLine_id from c_invoiceline where c_invoice_id = ? and c_charge_id = ? ");
						int invLineID = DB.getSQLValue(trx, sql.toString(), invoiceID,chargeID);
						if (invLineID < 1){  // Create New Line
							MInvoiceLine invrecup = new MInvoiceLine(new MInvoice(ctx, invoiceID, trx));
							invrecup.setC_Charge_ID(chargeID);
							invrecup.setQty(1);
							invrecup.setPrice(new BigDecimal(sumtax));
							invrecup.setLineNetAmt(new BigDecimal(sumtax)); // qty always 1 ( for compute Tax)
							invrecup.setTax();
							invrecup.setTaxAmt();
							invrecup.save(trx);
						}
						else {				 // Modify New Line
							MInvoiceLine invrecup = new MInvoiceLine(ctx,invLineID,trx);
							invrecup.setPrice(new BigDecimal(sumtax));
							invrecup.setLineNetAmt(new BigDecimal(sumtax)); // // qty always 1 ( for compute Tax)
							invrecup.setTaxAmt();
							invrecup.save(trx);
						}
				}}
				
				}
			}	
		}
	}
	
	public static void addModifyRecupelLine(Ctx ctx, int invoiceID, int partnerID, double amout,String taxeCode,Trx trx){
		// If recupel exist make/Update Recupel Line
		if (partnerID > 0){
			StringBuffer sql = 	new StringBuffer("select max(upper(nvl(substr(bp.taxid,1,2), c.countrycode))) ")
			.append("from c_bpartner bp ")
			.append("inner join c_bpartner_location bpl on bpl.c_bpartner_id = bp.c_bpartner_id " )
			.append("inner join c_location loc on loc.c_location_id = bpl.c_location_id ") 
			.append("inner join c_country c on c.c_country_id = loc.c_country_id ")
			.append("where bp.c_bpartner_id = ? and bpl.isactive = 'Y' ");
			
			int ref_ID  = DB.getSQLValue(trx, "Select AD_Reference_ID from AD_Reference where Name = 'ListProductTax' ");
			String ctry = DB.getSQLValueString(trx, sql.toString(), partnerID);
			if ("BE".equalsIgnoreCase(ctry) || "LU".equalsIgnoreCase(ctry)){
				//si taxeCode<> null, forcer l'ajout de la taxes.
				if(taxeCode!=null)
				{
					sql = new StringBuffer("select max(c_charge_id) from C_Charge where AD_Client_ID = ? "
							+ "and ListProductTax = ? ");
					ArrayList<Object> pa = new ArrayList<Object>();
					pa.add(ctx.getAD_Client_ID());
					pa.add(taxeCode);
					int chargeID = DB.getSQLValue(trx, sql.toString(), pa.toArray());
					if (chargeID > 0 ) {
						 // Create New Line
							MInvoiceLine invrecup = new MInvoiceLine(new MInvoice(ctx, invoiceID, trx));
							invrecup.setC_Charge_ID(chargeID);
							invrecup.setQty(1);
							invrecup.setPrice(new BigDecimal(amout));
							invrecup.setLineNetAmt(new BigDecimal(amout)); // qty always 1 ( for compute Tax)
							invrecup.setTax();
							invrecup.setTaxAmt();
							invrecup.save(trx);
					}
				
				
				}
			}	
		}
	}

	public static int getWarehouseIDByCountry(Ctx ctx, int AD_Org_ID, String CountryCode,Trx trx)
	{
		StringBuffer sql = 	new StringBuffer("Select M_Warehouse_id, cc.countrycode from M_Warehouse ") 
		.append("inner join c_location cl on cl.c_location_id = M_Warehouse.c_location_id ")
		.append("inner join c_country cc on cc.c_country_id = cl.c_country_id ")
		.append("where M_Warehouse.AD_Org_ID = ? and cc.countrycode = ? ")
		.append("order by M_Warehouse_id");
		
		ArrayList<Object> pa = new ArrayList<Object>();
		pa.add(AD_Org_ID);
		pa.add(CountryCode);
		int WarehouseID = DB.getSQLValue(trx, sql.toString(), pa.toArray());
		if(WarehouseID<=0)
		{
			WarehouseID = MOrg.get(ctx, AD_Org_ID).getM_Warehouse_ID();
		}
		
		return WarehouseID;
	}
	
	public static int getOrgByGLN(Ctx ctx, int AD_Client_ID, String GLN,Trx trx)
	{
		StringBuffer sql = 	new StringBuffer("Select Max(AD_Org_ID) from AD_Org where AD_Client_ID = ? and Z_Gln = ?");
				
		ArrayList<Object> pa = new ArrayList<Object>();
		pa.add(AD_Client_ID);
		pa.add(GLN);
		int Org_ID = DB.getSQLValue(trx, sql.toString(), pa.toArray());
		if(Org_ID<=0)
		{
			Org_ID = MOrg.get(ctx, Org_ID).getM_Warehouse_ID();
		}
		
		return Org_ID;	
	}
	
	public boolean generateInvoicePDF(Ctx ctx, int user_ID, int PInstance_ID,int order_ID,  int invoice_ID, Trx trx)
	{
		boolean retx = false;
		try {
		File ret = null;
		 MInvoice inv = new MInvoice(ctx, invoice_ID, trx);
		 MOrder mo = new MOrder(ctx, order_ID, trx);
	     String p_File = "/tmp/U"+user_ID+"_"+PInstance_ID+"_JasperReport.pdf";
	     if(System.getProperty("os.name").indexOf("win") >= 0)
			{
				String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
				p_File = xxx+p_File.replace("/", "\\");
				p_File = p_File.replace("\\tmp","");
			
			}
	        String p_File2 = inv.getDocumentNo()+".pdf";
	        ctx.setContext(1,"C_BPartner_ID", inv.getC_BPartner_ID());
			int AD_Process_ID = DB.getSQLValue(trx,"select ad_process_id from ad_process where value ='InvoiceOrderPrint3' ");
			ProcessInfo pi2 = new ProcessInfo("Invoice Print", AD_Process_ID);
	        pi2.setRecord_ID(invoice_ID  );
	        pi2.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(ctx,
	                    pi2.getAD_Process_ID(), pi2.getRecord_ID()));
	        pi2.setTable_ID(318);
	        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
	        ProcessInfoParameter pip1 = new ProcessInfoParameter("C_BPartner_ID",inv.getC_BPartner_ID(),
	                null, null, null);
	        pipList.add(pip1);
	        ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
	                .toArray(new ProcessInfoParameter[pipList.size()]);
	        pi2.setParameter(parameters);
	            //#18759
	            boolean success = true;
	            //#18759
	            RusReportStarter jrl = new RusReportStarter();
	            //#18759
	            MProcess process2 = new MProcess(ctx, AD_Process_ID, trx);
	            if (!process2.isReport()){
	            	ProcessStarter pstart = new ProcessStarter(ctx, AD_Process_ID, trx);
	            	pstart.setRecord_ID(invoice_ID);
	            	pstart.addParameter("FileName", p_File, null);
	            	try {
						pstart.start();
						String outFile = pstart.getOutput();
						int spacePos = outFile.indexOf(" ");
						if (spacePos > 0) {
						   outFile= outFile.substring(0, spacePos);
						}
						
						ret = new File(outFile);
					} catch (Exception e) {
						throw new CompiereException("Le processus d'export est en echec");
					}
	            }
	            else
	            {
	            //#18759
	            	ret = new File(p_File);
	            	
	            	ret = jrl.startReport(ctx, pi2, false); // ZCOM999
	            }
	            if (ret == null)
	            {
	                throw new CompiereException("Le processus d'export est en echec");
	            }
	            
	    			String URL = Msg.getMsg(ctx, "EGGO_UPLOADFILE");
	    			String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
	    			//String p_File = xxx+File.separator+"U"+AD_User_ID+"_"+PInstance_ID+"_JasperReport.pdf";
	    			String vals[] = mo.getDocumentNo().split("-");
	    			String URL_Linux = Msg.getMsg(ctx, "SHARE_FOLDER");
	    			if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
	    			{
	    				
	    				URL = URL+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+"Invoice"+File.separator+inv.getDocumentNo()+".pdf";

	    			}
	    			else
	    			{
	    				URL = URL+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+"Invoice"+File.separator+inv.getDocumentNo()+".pdf";
	    				URL_Linux = URL_Linux+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+"Invoice"+File.separator+inv.getDocumentNo()+".pdf";
	    			}
	    			
	    			InputStream inx = null;
	    			OutputStream outx = null;
	    			try {
	                	File nx = null;
	                	if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
	            			nx = new File(URL);
	            		else
	            			nx = new File(URL_Linux);
	        			FileUtils.copyFile(ret, nx);
	        			nx.canRead();
	        			File fxx = new File(nx.getAbsolutePath()); 
	        			fxx.exists();
	        			 
	        			String origx =ret.getAbsolutePath();
	        			String destx = nx.getAbsolutePath();
	        			inx = new FileInputStream(origx);
	        			outx = new FileOutputStream(destx);
	        			byte[] bufx = new byte[1024];
	        			int lenx;
	        			while ((lenx = inx.read(bufx)) > 0) {
	        			   outx.write(bufx, 0, lenx);
	        			}
	        			
	        			Timestamp t = new Timestamp(GregorianCalendar.getInstance().getTimeInMillis());
	        			MOrderDownload odx =  new MOrderDownload(ctx, 0, trx);
	        			//od.set("DateCreated", new GregorianCalendar());
	        			odx.set_Value("DateCreated", t);
	        			odx.setC_Order_ID(mo.getC_Order_ID());
	        			odx.setZ_FileType("Invoice");
	        			odx.setName(inv.getDocumentNo()+".pdf");
	        			odx.setDownloadURL(URL.replace("\\", "/"));
	        			odx.setAD_Org_ID(mo.getAD_Org_ID());
	        			odx.set_ValueNoCheck("IsArControled", false);
	        			odx.setIsToNotify(true);
	        			odx.save();
	        		
	        		} catch (IOException e) {
	        			// TODO Auto-generated catch block
	        			e.printStackTrace();
	        		}finally {
	        			inx.close();
	        			outx.close(); 
					}
	    			
	    		} catch (IOException e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		}
		
		return retx;
	}
}
