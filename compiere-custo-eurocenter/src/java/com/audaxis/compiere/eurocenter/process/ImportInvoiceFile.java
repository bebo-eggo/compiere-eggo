package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.apache.commons.io.FileUtils;
import org.apache.tools.ant.taskdefs.Copyfile;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MRefList;
import org.compiere.model.MReference;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.model.X_ZT_PrintArco;
import com.audaxis.compiere.util.CompiereException;
import com.ecenter.compiere.util.EggoCtx;

public class ImportInvoiceFile extends SvrProcess {

	private String p_FileName;
	
	static final String USER_NAME = "ERPDocumentService";
    static final String PASSWORD = "ERPD0c";
	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();     
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();    
			if (element.getParameter() == null)
				;
			else if (name.equals("UploadFile"))
				p_FileName = element.getParameter().toString();
			else
				log.severe("prepare - Unknown Parameter: " + name);  
		}
			getCtx().setBatchMode(false);
	}

	@Override
	protected String doIt() throws Exception {
		boolean isImported = false;
		try {
			
			File dir = new File(Msg.getMsg(getCtx(), "EC_INVOICE_PDF_OUT")); 
			String URLX = p_FileName;
			File fileIn = new File(URLX);
			String pname = fileIn.getName().replace(getCtx().get_ValueAsString("#AD_Session_ID")+"_"+getAD_User_ID()+"_", "");
			
			if(fileIn.exists() && dir.exists())
			{
				try {
					File fileout = new File(dir, "A"+getRecord_ID()+"Z.pdf");
					if(fileout.exists())
						FileUtils.deleteQuietly(fileout);
					
					FileUtils.copyFile(fileIn, new File(dir, "A"+getRecord_ID()+"Z.pdf"));
					FileUtils.deleteQuietly(fileIn);
						
					isImported = true;
					X_ZT_PrintArco ztpa = new X_ZT_PrintArco(getCtx(), 0, null);
					ztpa.setC_Invoice_ID(getRecord_ID());
					ztpa.setUser3_ID(getAD_User_ID());
					ztpa.setAD_Session_ID(getAD_PInstance_ID());
					ztpa.save();
					MInvoice mi = new MInvoice(getCtx(), getRecord_ID(), get_Trx());
					mi.set_ValueNoCheck("ZZ_FileName2",pname );
					mi.save();
				//boolean success = file.renameTo(); 
				}catch (Exception e) {
					throw new CompiereException("File not moved ");
				}			
			}
			
			
		} catch (Exception e) {
			isImported = false;
			e.printStackTrace();
		}
		if(isImported) {
			WSUtil.updateInvoice(getCtx(), MInvoice.get(getCtx(),getRecord_ID()), false, get_Trx());
			return Msg.getMsg(getCtx(), "EGGO_FILE_IMPORTED");
		}
		else
			return Msg.getMsg(getCtx(), "EGGO_NOT_FILE_IMPORTED");
			
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