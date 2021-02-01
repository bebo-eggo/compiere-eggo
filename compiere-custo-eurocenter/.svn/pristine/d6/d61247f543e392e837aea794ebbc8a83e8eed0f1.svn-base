package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.apache.commons.io.FileUtils;
import org.apache.tools.ant.taskdefs.Copyfile;
import org.compiere.model.MOrder;
import org.compiere.model.MProduct;
import org.compiere.model.MProductDownload;
import org.compiere.model.MRefList;
import org.compiere.model.MReference;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.model.MOrderDownload;

public class ImportWebFiles extends SvrProcess {

	private String p_FileName;
	private String p_FileRealName;
	private String p_FileType, p_Description;
	private Timestamp p_DateCreated, t, t1;
	private String p_DateCreatedS;
	static final String USER_NAME = "ERPDocumentService";
	static final String PASSWORD = "ERPD0c";
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();     
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();    
			if (element.getParameter() == null)
				;
			else if (name.equals("UploadFile"))
				p_FileName = element.getParameter().toString();
			else if (name.equals("File Name"))
				p_FileRealName = element.getParameter().toString();
			else if (name.equals("FileTypes"))
				p_FileType = element.getParameter().toString();
			else if (name.equals("DateValue"))
			{
				t = (Timestamp)element.getParameter();
				t1 = (Timestamp)element.getParameter_To();
				continue;
			}
			else if (name.equals("Description"))
				p_Description = element.getParameter().toString();
			else
				log.severe("prepare - Unknown Parameter: " + name);  
		}
		getCtx().setBatchMode(false);
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		//AJouter un record pour linké le fichier !
		String URLX = p_FileName;
		File fileIn = new File(URLX);
		int extensionIndex = fileIn.getName().lastIndexOf(".");
		int fileLenght = fileIn.getName().length();
		String extention = fileIn.getName().substring(extensionIndex, fileLenght);

		int record_ID = getRecord_ID();
		MProduct p = new MProduct(getCtx(),record_ID,get_Trx());
		p_FileRealName = DB.getSQLValueString(get_Trx(), " Select getNextMPDNo(?) from DUAL ", record_ID);

		FileUtils.copyFile(fileIn,new File(System.getProperty("java.io.tmpdir")+p_FileRealName+extention));
		String ret[] = fileIn.getName().split("_");
		String out = "";
		if(ret.length>0)
		{
			out = ret[ret.length-1];
		}
		String finalFileName = "";
		for (int i = 0; i < ret.length; i++) {
			if(i==0  || i==1)
				continue;
			finalFileName = finalFileName+ret[i];
		}
		if(p_FileRealName==null)
		{
			p_FileRealName = finalFileName;
			int extensionIndexx = p_FileRealName.lastIndexOf(".");
			p_FileRealName = p_FileRealName.substring(0, extensionIndexx);
		}


		MProductDownload pd = new MProductDownload(getCtx(), 0, get_Trx());
		pd.setClientOrg(p.getAD_Client_ID(), p.getAD_Org_ID());
		pd.setM_Product_ID(p.getM_Product_ID());
		pd.setName(p_FileRealName);
		pd.set_Value("Description", p_Description);
		pd.set_Value("DateFrom", t);
		pd.set_Value("DateTo", t1);

		//Depuis une liste déroulante en parametre pour savoir si pictures/others/....
		//		int ids[] = MReference.getAllIDs(MReference.Table_Name, "Name = 'File Types WEB'", get_Trx());
		//		String fileType = "Others file";
		//		if(ids.length>0 &&  !fileType.isEmpty())
		//		{
		//			fileType = MRefList.getListName(getCtx(), ids[0], p_FileType);
		//		}
		pd.set_Value("Z_FileType", p_FileType);


		String URL = Msg.getMsg(getCtx(), "EC_UPLOADFILE");
		String marque = DB.getSQLValueString(get_Trx(), "select value from Y_Marque where Y_Marque_ID = ?", p.get_ValueAsInt("Y_Marque_ID"));


		connect();

		//\\ERPdocument\ERPDOCUMENT071\071MAER130009\CommandeClient\071-710000015\Other files' directory cannot be created
		////erpdocument/erpdocument/071/071MAER130009/CommandeClient/071-710000015/Picture files/[710000478]DOC2001_Elevation 1.JPEG

		//Tester si le directory existe !
		URL = URL+File.separator+marque + File.separator +  p.getValue()+File.separator+p_FileRealName+extention;
		File fileOut = new File(URL);

		boolean isImported = false;
		String errMsg = "";
		try {
			FileUtils.copyFile(fileIn,fileOut);
			pd.setDownloadURL(URL.replace("\\", "/"));
			pd.save();
			isImported = true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			isImported = false;
			e.printStackTrace();
			errMsg = e.getMessage();
		}
		if(isImported)
			return Msg.getMsg(getCtx(), "EGGO_FILE_IMPORTED");
		else
			return Msg.getMsg(getCtx(), "EGGO_NOT_FILE_IMPORTED") + errMsg;

	}
	public void connect() {
		String URL = Msg.getMsg(getCtx(), "EC_UPLOADFILE");
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

}