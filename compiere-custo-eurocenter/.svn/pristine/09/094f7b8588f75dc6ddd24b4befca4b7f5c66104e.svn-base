package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MProcess;
import org.compiere.model.MSession;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;

import ru.compiere.report.RusReportStarter;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.export.ExportEngine;
import com.audaxis.compiere.export.ExportEngineFactory;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.model.X_ZT_PrintArco;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.util.CompiereException;

public class PrintArco extends ReportServerOutputImpl 
implements ReportBatchModeInterface, ReportServer {
	
	private int p_User3_ID = 0;
	String p_File = null;
	String p_File2 = null;
	File ret = null;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("User3_ID"))
				p_User3_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}
	@Override
	protected String getOutputFileNameSimple() {
		// TODO Auto-generated method stub
		
		if(p_File==null)
			return "NoFile";
		return p_File2 ;
	}

	@Override
	protected void buildOutputFile() {
		// TODO Auto-generated method stub
		
		if(p_User3_ID==0)
			throw new CompiereException("Merci de sélectionner un utilisateur !");
		String sql = "Select zia.C_INVOICE_ID from ZRV_INVOICEARCO zia "
				+ "where not exists (select 1 from ZT_PrintArco "
				+ "where ZT_PrintArco.AD_Client_ID = zia.AD_Client_ID and ZT_PrintArco.C_Invoice_ID = zia.C_Invoice_ID) "
				+ "and zia.createdBy = ? and zia.AD_Client_ID = ? and Rownum between 0 and 1050";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int index = 1;
		int count = 0;
		try {
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt (index++, p_User3_ID);
			pstmt.setInt (index++, getAD_Client_ID());
			rs = pstmt.executeQuery ();
			while (rs.next())
			{
				X_ZT_PrintArco ztpa = new X_ZT_PrintArco(getCtx(), 0, null);
				ztpa.setC_Invoice_ID(rs.getInt(1));
				ztpa.setUser3_ID(p_User3_ID);
				ztpa.setAD_Session_ID(getAD_PInstance_ID());
				ztpa.save();
				count++;
			}
			commit();
			
			//Exécution du Jasper !
    		
			p_File = "/tmp/U"+getAD_User_ID()+"_"+getAD_PInstance_ID()+"_JasperReport.pdf";
			p_File2 = "Arco.pdf";
    		if(System.getProperty("os.name").indexOf("win") >= 0)
    		{
    			String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
    			p_File = xxx+p_File.replace("/", "\\");
    			p_File = p_File.replace("\\tmp","");
			
    		}
    		
			int AD_Process_ID = DB.getSQLValue(get_Trx(),"select ad_process_id from ad_process where value ='ArcoPrint' ");
			ProcessInfo pi = new ProcessInfo("Arco Print", AD_Process_ID);
	        pi.setRecord_ID(getAD_PInstance_ID());
	        pi.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(getCtx(),
	                    pi.getAD_Process_ID(), pi.getRecord_ID()));
	            //#18759
	            boolean success = true;
	            //#18759
	            RusReportStarter jrl = new RusReportStarter();
	            //#18759
	            MProcess process = new MProcess(getCtx(), AD_Process_ID, get_Trx());
	            if (!process.isReport()){
	            	ProcessStarter pstart = new ProcessStarter(getCtx(), AD_Process_ID, get_Trx());
	            	pstart.setRecord_ID(getAD_PInstance_ID());
	            	pstart.addParameter("FileName", p_File, null);
	            	try {
						pstart.start();
						ret = new File(p_File);
					} catch (Exception e) {
						throw new CompiereException("Le processus d'export est en echec");
					}
	            }
	            else
	            {
	            //#18759
	            	ret = new File(p_File);
	            	
	            	ret = jrl.startReport(getCtx(), pi, false); // ZCOM999
	            }
	            if (ret == null)
	            {
	                throw new CompiereException("Le processus d'export est en echec");
	            }
	            
	            File f = new File(ret.getAbsolutePath()); 
	    		try {
	    			File n = new File(getOutputAbsoluteFileName());
	    			FileUtils.copyFile(f, n);
	    			n.canRead();
	    			File fx = new File(n.getAbsolutePath()); 
	    			fx.exists();
	    			 
	    			String orig =f.getAbsolutePath();
	    			String dest = n.getAbsolutePath();
	    			InputStream in = new FileInputStream(orig);
	    			OutputStream out = new FileOutputStream(dest);
	    			byte[] buf = new byte[1024];
	    			int len;
	    			while ((len = in.read(buf)) > 0) {
	    			   out.write(buf, 0, len);
	    			}
	    			in.close();
	    			out.close(); 
	    			//final String URL = "Export?p_file_name=" + f.getName();
	                 //com.google.gwt.user.client.Window.open( URL, "", "menubar=yes,location=yes,resizable=yes,scrollbars=yes,status=yes" );
//	    			String osName = System.getProperty("os.name").toLowerCase();
//	    			if(osName.contains("windows"))
//	    			{
//	    			    //windows systems only
//	    			    //(may use java.awt.Desktop.getDesktop().open(file); on other OS)
//	    			    Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler \"" + n.getAbsolutePath() + "\"");            
//	    			    
//	    			}
//	    			else
//	    			{
//	    			    //all other systems
//	    			    Desktop.getDesktop().open(n);
//	    			}
	    			//Desktop.getDesktop().browse(n.toURI());
	    		} catch (IOException e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			Util.closeCursor(pstmt, rs);
		}
	}

}
