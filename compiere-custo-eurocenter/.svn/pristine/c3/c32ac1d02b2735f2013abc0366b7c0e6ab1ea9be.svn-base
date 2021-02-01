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
import org.compiere.model.MOrder;
import org.compiere.model.MRefList;
import org.compiere.model.MReference;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.ecenter.compiere.util.EggoCtx;

public class ImportOrder extends SvrProcess {

	private String p_FileName;
	private String p_FileRealName;
	private String p_FileType, p_Description;
	private Timestamp p_DateCreated, t;
	private String p_DateCreatedS;
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
			else if (name.equals("FileName"))
				p_FileRealName = element.getParameter().toString();
			else if (name.equals("FileTypes"))
				p_FileType = element.getParameter().toString();
			else if (name.equals("DateCreated"))
			{
				p_DateCreatedS = element.getInfo().toString();
				p_DateCreated = (Timestamp)element.getParameter();
				if(p_DateCreatedS.length()==10)
				{
					t = (Timestamp)element.getParameter();
					continue;
				}
				//p_DateCreated = (Timestamp)element.getParameter();
				Calendar calendar = new GregorianCalendar();
				calendar.setTimeInMillis(p_DateCreated.getTime());
				String hours = p_DateCreatedS.substring(p_DateCreatedS.indexOf(":")-2,p_DateCreatedS.indexOf(":"));
				String mins = p_DateCreatedS.substring(p_DateCreatedS.indexOf(":")+1,p_DateCreatedS.indexOf(":")+3);
				calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DAY_OF_MONTH), hours!=null?new Integer(hours.replace(" ", "0")):0, mins!=null?new Integer(mins.replace(" ", "0")):0, 0);
				GregorianCalendar g = new GregorianCalendar(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DAY_OF_MONTH), hours!=null?new Integer(hours.replace(" ", "0")):0, mins!=null?new Integer(mins.replace(" ", "0")):0, 0);
				t = new Timestamp(g.getTimeInMillis());
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
		//AJouter un record pour linké le fichier !
		//EggoCtx.setConstants(getCtx(),getCtx().getAD_Client_ID());
		String URLX = p_FileName;
		File fileIn = new File(URLX);
		int extensionIndex = fileIn.getName().lastIndexOf(".");
		int fileLenght = fileIn.getName().length();
		String extention = fileIn.getName().substring(extensionIndex, fileLenght);
		//Si p_FileRealName est null => Mettre le nom du fichier original
		
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
		int record_ID = getRecord_ID();
		MOrderDownload od = new MOrderDownload(getCtx(), 0, get_Trx());
		//od.set("DateCreated", new Timestamp(new GregorianCalendar().getTimeInMillis()));
		od.set_Value("Description", p_Description);
		//od.set_Value("DateCreated", p_DateCreated);
		od.setC_Order_ID(record_ID);
		//Depuis une liste déroulante en parametre pour savoir si pictures/others/....
		int ids[] = MReference.getAllIDs(MReference.Table_Name, "Name = 'File Types'", get_Trx());
		String fileType = "Others file";
		if(ids.length>0)
		{
			fileType = MRefList.getListName(getCtx(), ids[0], p_FileType);
		}
		od.setZ_FileType(fileType);
		od.setName(p_FileRealName+extention);
		String URL = Msg.getMsg(getCtx(), "EGGO_UPLOADFILE");
		String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER");
		MOrder mo = new MOrder(getCtx(), record_ID, get_Trx());
		MDocType dt = new MDocType(getCtx(), mo.getC_DocType_ID(), get_Trx());
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(),  mo.getC_DocTypeTarget_ID(), get_Trx());//DOCTYPE SAV
		MDocTypeInfo dtiParent = MDocTypeInfo.get(getCtx(),  dti.getC_DocType_Parent_ID(), get_Trx()); //DOCTYPE PARENT NON SAV
		String vals[] = mo.getDocumentNo().split("-");
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		//\\ERPdocument\ERPDOCUMENT071\071MAER130009\CommandeClient\071-710000015\Other files' directory cannot be created
		////erpdocument/erpdocument/071/071MAER130009/CommandeClient/071-710000015/Picture files/[710000478]DOC2001_Elevation 1.JPEG
		if(vals.length>0 && OSInfo.OS.WINDOWS.equals(OSInfo.getOs()) )
		{
			//Tester si le directory existe !
			URL = URL+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+fileType+File.separator+p_FileRealName+extention;
		}
		else
		{
			//LINUX
			URL = URL+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+fileType+File.separator+p_FileRealName+extention;
			URL_Linux = URL_Linux+File.separator+vals[0]+File.separator+mo.getPOReference()+File.separator+"CommandeClient"+File.separator+mo.getDocumentNo()+File.separator+fileType+File.separator+p_FileRealName+extention;
		}
		File fileOut = null;
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			fileOut = new File(URL);
		else
			fileOut = new File(URL_Linux);
		
		boolean isImported = false;
		try {
			FileUtils.copyFile(fileIn,fileOut);
			od.setDownloadURL(URL.replace("\\", "/"));
			od.setAD_Org_ID(mo.getAD_Org_ID());
			od.setIsToNotify(true);
			od.save();
			//Si depuis une vente SAV, copier la ligne MOrderDownload vers le contrat store.
			
			if(dti != null && dti.isSAV() && dti.isCuisine())// MERGE
			{
				//Reprendre le Contrat store initail avec ce poreference.
				String poref = mo.getPOReference()!=null?mo.getPOReference().toUpperCase().trim():null;
				if(poref!=null)
				{
					int Order_ID = 0;
					if(dtiParent.isPlacard() && dti.isCuisine())//MERGE
						Order_ID = DB.getSQLValue(get_Trx(), "Select NVL(max(C_Order_ID),0) from C_Order where trim(upper(POReference)) = ? "
								+ "and AD_Client_ID = "+getAD_Client_ID()+" and C_Doctype_ID = "
								+dtiParent.getC_DocType_ID(), //MERGE
								poref);
					else
						Order_ID = DB.getSQLValue(get_Trx(), "Select NVL(max(C_Order_ID),0) from C_Order where trim(upper(POReference)) = ? "
								+ "and AD_Client_ID = "+getAD_Client_ID()+" and C_Doctype_ID = "
								+dtiParent.getC_DocType_ID(), //MERGE
								poref);
					
					MOrder mox = new MOrder(getCtx(), Order_ID, get_Trx());
					if(Order_ID!=0 && od.getC_Order_ID() !=Order_ID)
					{
						MOrderDownload odx = new MOrderDownload(getCtx(), 0, get_Trx());
						//od.set("DateCreated", new GregorianCalendar());
						odx.set_Value("Description", p_Description);
						//odx.set_Value("DateCreated", new Timestamp(new GregorianCalendar().getTimeInMillis()));
						odx.setC_Order_ID(Order_ID);
						odx.setZ_FileType(fileType);
						odx.setName(p_FileRealName+extention);
						odx.setDownloadURL(URL.replace("\\", "/"));
						odx.setAD_Org_ID(mox.getAD_Org_ID());
						odx.setIsToNotify(true);
						odx.save();
					}
				}
			}
			isImported = true;
			//103493
			
		} catch (Exception e) {
			isImported = false;
			e.printStackTrace();
		}
		if(isImported)
			return Msg.getMsg(getCtx(), "EGGO_FILE_IMPORTED");
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