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
import org.compiere.model.MOrder;
import org.compiere.model.MProductDownload;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.util.Ctx;
import org.compiere.util.Msg;

import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.util.CompiereException;

public class OpenFile extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer{

	int record_ID = 0;
	static final String USER_NAME = "ERPDocumentService";
    static final String PASSWORD = "ERPD0c";
    private MOrderDownload mod = null;

	@Override
	protected String getOutputFileNameSimple() {
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		File f = null;
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			f = new File(mod.getDownloadURL()); 
		else
		{
			String URL = mod.getDownloadURL();
			if(URL.toUpperCase().contains("//ERPDOCUMENT/ERPDOCUMENT"))
			{
				String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER");
				String Link = URL.substring("//ERPDOCUMENT/ERPDOCUMENT".length(),URL.length() );
				URL = URL_Linux+Link;
			}
			if(URL.toUpperCase().contains("//MACH-FILES"))
			{
				String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER2");
				String Link = URL.substring("//MACH-FILES/ArchivesAR".length(), URL.length());
				URL = URL_Linux+Link;
			}
			log.warning("URL = "+URL);
			f = new File(URL); 
		}
		if(!f.exists())
			throw new CompiereException("File not found !");
		MOrder mo = new MOrder(getCtx(),mod.getC_Order_ID(),get_TrxName());
		int extensionIndex = f.getName().lastIndexOf(".");
		int fileLenght = f.getName().length();
		String extention = f.getName().substring(extensionIndex, fileLenght);
		if(mod.getName().lastIndexOf(".")>0)
			extention = "";
		String s = null;
		try {
			s = new String(sansAccent(mod.getName()).getBytes("ISO-8859-1"));
			//s = sansAccent(s); 
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return mod.getDownloadURL();
		return s==null?"File_"+mo.getDocumentNo()+extention:s.replace(" ", "_").replace("/", "_").replace("\\", "_")+extention ;
		//return null;
	}

	@Override
	protected void prepare() {
		record_ID = getRecord_ID();
		mod = new MOrderDownload(getCtx(), record_ID, get_Trx()); 
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void buildOutputFile() {
		// TODO Auto-generated method stub
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		
		
		File f = null;
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			f = new File(mod.getDownloadURL()); 
		else
		{
			String URL = mod.getDownloadURL();
			if(URL.toUpperCase().contains("//ERPDOCUMENT/ERPDOCUMENT"))
			{
				String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER");
				String Link = URL.substring("//ERPDOCUMENT/ERPDOCUMENT".length(),URL.length() );
				URL = URL_Linux+Link;
			}
			if(URL.toUpperCase().contains("//MACH-FILES"))
			{
				String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER2");
				String Link = URL.substring("//MACH-FILES/ArchivesAR".length(), URL.length());
				URL = URL_Linux+Link;
			}
			log.warning("URL = "+URL);
			f = new File(URL); 
			if(!f.exists())
				throw new CompiereException("File not found !");
		}
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
//			String osName = System.getProperty("os.name").toLowerCase();
//			if(osName.contains("windows"))
//			{
//			    //windows systems only
//			    //(may use java.awt.Desktop.getDesktop().open(file); on other OS)
//			    Runtime.getRuntime().exec("rundll32 url.dll,FileProtocolHandler \"" + n.getAbsolutePath() + "\"");            
//			    
//			}
//			else
//			{
//			    //all other systems
//			    Desktop.getDesktop().open(n);
//			}
			//Desktop.getDesktop().browse(n.toURI());
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
		final String accents = "ÀÁÂÃÄÅàáâãäåÈÉÊËèéêëûüùôöÔÖÛÜïÏ"; // A compléter...
		final String letters = "AAAAAAaaaaaaEEEEeeeeuuuooOOUUiI"; // A compléter...
 
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
