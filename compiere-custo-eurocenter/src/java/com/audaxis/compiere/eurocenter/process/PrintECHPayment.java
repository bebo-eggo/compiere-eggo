package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MOrder;
import org.compiere.model.MProcess;
import org.compiere.model.MRefList;
import org.compiere.model.MReference;
import org.compiere.model.X_I_Invoice;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
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

public class PrintECHPayment extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer{

	int record_ID = 0;
	static final String USER_NAME = "ERPDocumentService";
    static final String PASSWORD = "ERPD0c";
    private X_I_Invoice mod = null;
    private int p_User3_ID = 0;
	String p_File = null;
	String p_File2 = null;
	File ret = null;
	int pinstance_ID = 0;
	private int p_orderID;
	String p_File3 = null;

	@Override
	protected void prepare() {
		p_orderID = getRecord_ID();
		pinstance_ID = getAD_PInstance_ID();
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
		//
		MOrder mo = new MOrder(getCtx(), p_orderID, get_Trx()); 
		String URL = Msg.getMsg(getCtx(), "EGGO_UPLOADFILE");
		String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER");
		String vals[] = mo.getDocumentNo().split("-");
		String extention = "pdf";
		
		String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
		p_File = xxx+File.separator+"U"+getAD_User_ID()+"_"+this.getAD_PInstance_ID()+"_JasperReport.pdf";
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
		{
			
			URL = URL+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+"Echeancier de paiement"+File.separator+mo.getDocumentNo()+"_EcheancierPaiement."+extention;
			//String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
			//p_File = xxx+p_File.replace("/", "\\");
			//p_File = p_File.replace("\\tmp","");
		}
		else
		{
			
			//p_File = xxx+File.separator+"U"+getAD_User_ID()+"_"+this.getAD_PInstance_ID()+"_JasperReport.pdf";
			URL = URL+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+"Echeancier de paiement"+File.separator+mo.getDocumentNo()+"_EcheancierPaiement."+extention;
			URL_Linux = URL_Linux+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+"Echeancier de paiement"+File.separator+mo.getDocumentNo()+"_EcheancierPaiement."+extention;;
		}
		
		//p_File = URL;
		//\\ERPdocument\ERPDOCUMENT071\071MAER130009\CommandeClient\071-710000015\Other files' directory cannot be created
		////erpdocument/erpdocument/071/071MAER130009/CommandeClient/071-710000015/Picture files/[710000478]DOC2001_Elevation 1.JPEG
		if(vals.length>0)
		{
			//Tester si le directory existe !
			}
		p_File2 = mo.getDocumentNo()+"_EcheancierPaiement."+extention;
		int AD_Process_ID = 1003803;
		ProcessInfo pi2 = new ProcessInfo("Arco Print", AD_Process_ID);
        pi2.setRecord_ID(p_orderID  );
        pi2.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(getCtx(),
                    pi2.getAD_Process_ID(),p_orderID));
        pi2.setTable_ID(MOrder.Table_ID);
        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
        ProcessInfoParameter pip1 = new ProcessInfoParameter("C_BPartner_ID",mo.getC_BPartner_ID(),
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
            String dest = "";
            try {
    			File n = new File(getOutputAbsoluteFileName());
    			FileUtils.copyFile(f, n);
    			n.canRead();
    			File fx = new File(n.getAbsolutePath()); 
    			fx.exists();
    			 
    			String orig =f.getAbsolutePath();
    			dest = n.getAbsolutePath();
    			InputStream in = new FileInputStream(orig);
    			OutputStream out = new FileOutputStream(dest);
    			byte[] buf = new byte[1024];
    			int len;
    			while ((len = in.read(buf)) > 0) {
    			   out.write(buf, 0, len);
    			}
    			in.close();
    			out.close(); 
    			
    		
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
            try {
            	File n = null;
            	if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
        			n = new File(URL);
        		else
        			n = new File(URL_Linux);
    			FileUtils.copyFile(f, n);
    			n.canRead();
    			File fx = new File(n.getAbsolutePath()); 
    			fx.exists();
    			 
    			String orig =f.getAbsolutePath();
    			dest = n.getAbsolutePath();
    			InputStream in = new FileInputStream(orig);
    			OutputStream out = new FileOutputStream(dest);
    			byte[] buf = new byte[1024];
    			int len;
    			while ((len = in.read(buf)) > 0) {
    			   out.write(buf, 0, len);
    			}
    			in.close();
    			out.close(); 
    			
    		
    		} catch (IOException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
		Timestamp t = new Timestamp(GregorianCalendar.getInstance().getTimeInMillis());
		MOrderDownload odx = MOrderDownload.getOrderDownloadByType(getCtx(), "Echeancier de paiement", p_orderID, get_Trx());
		if(odx == null)
			odx = new MOrderDownload(getCtx(), 0, get_Trx());
		//od.set("DateCreated", new GregorianCalendar());
		odx.set_Value("DateCreated", t);
		odx.setC_Order_ID(p_orderID);
		odx.setZ_FileType("Echeancier de paiement");
		odx.setName(mo.getDocumentNo()+"_EcheancierPaiement.pdf");
		odx.setDownloadURL(URL.replace("\\", "/"));
		odx.setAD_Org_ID(mo.getAD_Org_ID());
		odx.set_ValueNoCheck("IsArControled", false);
		odx.setIsToNotify(true);
		odx.save();
		//od.set("DateCreated", new GregorianCalendar());
		
	}
	
	public void connect() {
		String URL = Msg.getMsg(getCtx(), "EGGO_UPLOADFILE");
		String commandConnect = "net use " + URL+" /USER:"+USER_NAME+"@Eurocenter.be "+PASSWORD+" /PERSISTENT:NO";
		try {
			Runtime.getRuntime().exec(commandConnect);
		} catch (IOException e) {
			e.printStackTrace();
		}
    }

}
