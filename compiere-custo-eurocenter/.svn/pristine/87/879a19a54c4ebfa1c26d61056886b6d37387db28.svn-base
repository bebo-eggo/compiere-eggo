package com.audaxis.compiere.eurocenter.process;

import java.awt.Desktop;
import java.awt.Window;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MProcess;
import org.compiere.model.MProductDownload;
import org.compiere.model.X_I_Invoice;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.util.CompiereException;

import ru.compiere.report.RusReportStarter;

public class PrintInvoicePaymSch extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer{

	int record_ID = 0;
	static final String USER_NAME = "ERPDocumentService";
    static final String PASSWORD = "ERPD0c";
    private X_I_Invoice mod = null;
    private int p_User3_ID = 0;
	String p_File = null;
	String p_File2 = null;
	File ret = null;
	int pinstance_ID = 0;

	@Override
	protected String getOutputFileNameSimple() {
		//Nom du fichier : InvoiceNo.pdf
		
		if(p_File==null)
			return "NoFile";
		return p_File2 ;
	}

	@Override
	protected void prepare() {
		record_ID = getRecord_ID();
		pinstance_ID = getAD_PInstance_ID();
	}

	@Override
	protected void buildOutputFile() {
		// TODO Auto-generated method stu
	    MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), record_ID, get_Trx());
	    MOrder mo = new MOrder(getCtx(), ops.getC_Order_ID(),  get_Trx());
	    if ( ops.getC_Invoice_ID() <=0){

	        
		int AD_Process_ID = DB.getSQLValue(get_Trx(),"select ad_process_id from ad_process where ClassName like '%InvoiceOrderPaymSch%' ");
		ProcessInfo pi = new ProcessInfo("InvoiceOrderPaymSch", AD_Process_ID);
        pi.setRecord_ID(record_ID);
        int instance_ID = MPInstanceProxy.getAD_PInstance_ID(getCtx(),
                pi.getAD_Process_ID(), record_ID);
        pi.setAD_PInstance_ID(instance_ID);
        
        MProcess process = new MProcess(getCtx(), AD_Process_ID, null);
        process.processIt(pi, null);
        if (pi.isError()) {
            addLog(pi.getSummary());
        }
        
        commit();	

	    }
	    
        ops = new MOrderPaymSchedule(getCtx(), record_ID, get_Trx());
        MInvoice inv = new MInvoice(getCtx(), ops.getC_Invoice_ID(), get_Trx());
        p_File = "/tmp/U"+getAD_User_ID()+"_"+this.getAD_PInstance_ID()+"_JasperReport.pdf";
		if(System.getProperty("os.name").indexOf("win") >= 0)
		{
			String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
			p_File = xxx+p_File.replace("/", "\\");
			p_File = p_File.replace("\\tmp","");
		
		}
        p_File2 = inv.getDocumentNo()+".pdf";
        getCtx().setContext(1,"C_BPartner_ID", inv.getC_BPartner_ID());
		int AD_Process_ID = DB.getSQLValue(get_Trx(),"select ad_process_id from ad_process where value ='InvoiceOrderPrint3' ");
		ProcessInfo pi2 = new ProcessInfo("Arco Print", AD_Process_ID);
        pi2.setRecord_ID(record_ID  );
        pi2.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(getCtx(),
                    pi2.getAD_Process_ID(), pi2.getRecord_ID()));
        pi2.setTable_ID(ops.get_Table_ID());
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
            MProcess process2 = new MProcess(getCtx(), AD_Process_ID, get_Trx());
            if (!process2.isReport()){
            	ProcessStarter pstart = new ProcessStarter(getCtx(), AD_Process_ID, get_Trx());
            	pstart.setRecord_ID(record_ID);
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
            	
            	ret = jrl.startReport(getCtx(), pi2, false); // ZCOM999
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
    			
    			String URL = Msg.getMsg(getCtx(), "EGGO_UPLOADFILE");
    			String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
    			//String p_File = xxx+File.separator+"U"+AD_User_ID+"_"+PInstance_ID+"_JasperReport.pdf";
    			String vals[] = mo.getDocumentNo().split("-");
    			String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER");
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
        			FileUtils.copyFile(f, nx);
        			nx.canRead();
        			File fxx = new File(nx.getAbsolutePath()); 
        			fxx.exists();
        			 
        			String origx =f.getAbsolutePath();
        			String destx = nx.getAbsolutePath();
        			inx = new FileInputStream(origx);
        			outx = new FileOutputStream(destx);
        			byte[] bufx = new byte[1024];
        			int lenx;
        			while ((lenx = inx.read(bufx)) > 0) {
        			   outx.write(bufx, 0, lenx);
        			}
        			
        			Timestamp t = new Timestamp(GregorianCalendar.getInstance().getTimeInMillis());
        			MOrderDownload odx =  new MOrderDownload(getCtx(), 0, get_Trx());
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
	}
	
}
