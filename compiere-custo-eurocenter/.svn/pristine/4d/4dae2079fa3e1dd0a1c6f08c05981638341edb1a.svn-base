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
import java.util.ArrayList;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MProductDownload;
import org.compiere.model.X_I_Invoice;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.util.Ctx;
import org.compiere.util.Msg;

import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.util.CompiereException;

public class OpenInvoiceFile extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer{

	int record_ID = 0;
	static final String USER_NAME = "ERPDocumentService";
    static final String PASSWORD = "ERPD0c";
    private X_I_Invoice mod = null;

	@Override
	protected String getOutputFileNameSimple() {
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		File f = null;
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			f = new File(mod.get_ValueAsString("ZZ_FileName")); 
		else
		{
			String URL = mod.get_ValueAsString("ZZ_FileName");
			f = new File(URL); 
		}
		if(!f.exists())
			throw new CompiereException("File not found !");
		
		int extensionIndex = f.getName().lastIndexOf(".");
		int fileLenght = f.getName().length();
		String extention = f.getName().substring(extensionIndex, fileLenght);
		String s = null;
		try {
			s = new String(f.getName().getBytes("ISO-8859-1"));
			//s = sansAccent(s); 
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return mod.getDownloadURL();
		return s==null?"File_"+f.getName()+extention:s.replace(" ", "_")+extention ;
		//return null;
	}

	@Override
	protected void prepare() {
		record_ID = getRecord_ID();
		mod = new X_I_Invoice(getCtx(), record_ID, get_Trx()); 
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void buildOutputFile() {
		// TODO Auto-generated method stub
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		File f = null;
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			f = new File(mod.get_ValueAsString("ZZ_FileName")); 
		else
		{
			String URL = mod.get_ValueAsString("ZZ_FileName");
			f = new File(URL); 
		}
		if(!f.exists())
			throw new CompiereException("File not found !");
		
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
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void connect() {
		String URL = Msg.getMsg(getCtx(), "EGGO_UPLOADFILE").replace("/","\\");
		//net use \\ERPdocument\ERPDOCUMENT /USER:ERPDocumentService@Eurocenter.be ERPD0c /PERSISTENT:NO
		String commandConnect = "net use " + URL+" /USER:"+USER_NAME+"@Eurocenter.be "+PASSWORD+" /PERSISTENT:NO";
		try {
			Runtime.getRuntime().exec(commandConnect);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//Socket sock = new Socket("127.0.0.1",13267)
		//sock.
		//return true;
    }
	
	public static String sansAccent(String s) {
		final String accents = "ÀÁÂÃÄÅàáâãäåÈÉÊËèéêë"; // A compléter...
		final String letters = "AAAAAAaaaaaaEEEEeeee"; // A compléter...
 
		StringBuffer buffer = null;
		for(int i=s.length()-1 ; i>=0; i--) {
			int index = accents.indexOf(s.charAt(i));
			if (index>=0) {
				if (buffer==null) {
					buffer = new StringBuffer(s);
				}
				buffer.setCharAt(i, letters.charAt(index));
			}
		}
		return buffer==null ? s : buffer.toString();
	}
}
