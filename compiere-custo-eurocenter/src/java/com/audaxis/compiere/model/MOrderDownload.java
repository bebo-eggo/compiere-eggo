package com.audaxis.compiere.model;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.api.UICallout;
import org.compiere.framework.PO;
import org.compiere.model.MOrder;
import org.compiere.model.MRefList;
import org.compiere.model.MReference;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.eurocenter.ws.MWSEventLog;
import com.audaxis.compiere.eurocenter.ws.X_WSEggo;

public class MOrderDownload extends X_C_OrderDownload {

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		if(newRecord)
		{
			
			try {
				set_ValueNoCheck("FileSize", getFileSize(getDownloadURL()));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return super.beforeSave(newRecord);
			}
		}
		return super.beforeSave(newRecord);
	}

	private boolean IsToNotify = false;
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		// TODO Auto-generated method stub
		//103493
		if(isIsToNotify())
		{
			String REST_URI = null;
			if(this.getAD_Client_ID() == 1000024)
				REST_URI = Msg.getMsg("en_US",  "EGGOLUX_WS_SERVEUR");
			else
				REST_URI = Msg.getMsg("en_US",  "EGGO_WS_SERVEUR");
			int WSID = DB.getSQLValue(get_Trx(), "Select XX_WSEggo_ID from XX_WSEggo where AD_Client_ID = ? and XX_WSName = ?  ",this.getAD_Client_ID(), "attachFileNotification");
			X_WSEggo ws = new X_WSEggo(getCtx(), WSID, get_Trx());
			MWSEventLog wse = new MWSEventLog(getCtx(), 0, get_Trx());
			
			wse.setCounter(0);
			wse.setRunsMax(ws.getRunsMax());
					
			String AccesMajWS = Msg.getMsg(getCtx(), "WS_NOTIFY_ATTACHFILE");
			
			if(AccesMajWS.equals("1")){
				wse.setXX_WSEggo_ID(WSID);
				wse.setURLWS(REST_URI+ws.getURLWS());
				MOrder mo = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
				String WSBody = "{\"c_order_id\":\""+getC_Order_ID()+"\","
						+ "\"documentno\":\""+mo.getDocumentNo()+"\","
						+ "\"poreference\":\""+mo.getPOReference()+"\","
						+ "\"urlfile\":\""+getDownloadURL()+"\","
						+ "\"filename\":\""+getName()+"\","
						+ "\"filetype\":\""+getZ_FileType()+"\"}";
				wse.setWSBody(WSBody);
			}
			else{
				wse.setProcessed(true);
				wse.setCounter(ws.getRunsMax());
				wse.setURLWS("Anomalie dans le parametrage");
			}
			wse.save();
		}
		return super.afterSave(newRecord, success);
	}

	public MOrderDownload(Ctx ctx, int C_OrderDownload_ID, Trx trx) {
		super(ctx, C_OrderDownload_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrderDownload(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static String getListFile(MOrder po,Integer vendor_id, Trx trx0, Ctx ctx0, Integer BP_Group_ID) {
		String lst = DB.getSQLValueString(trx0, "select  Z_FileType from Z_EGGOPJ "
				+ "where ((c_bpartner_id is null and C_BP_Group_ID is null) OR (c_bpartner_id = " + vendor_id + " and C_BP_Group_ID is null) OR (c_bpartner_id is null and C_BP_Group_ID = "+BP_Group_ID+")) and c_doctype_id = ? ", po.getC_DocTypeTarget_ID());
		return lst;
	}

	public static int copyFromSOToPO(MOrder so, int poID,Integer vendor_id,Integer BP_Group_ID,Trx trx0, Ctx ctx0){
		//if(vendor_id > 0){
			String crit = "";
			MOrder po = new MOrder(ctx0,poID,trx0);
			String lst = getListFile(po, vendor_id, trx0, ctx0, BP_Group_ID);
			if (lst != null) crit = " AND Z_FileType in (" + lst + ") and isactive = 'Y' and downloadurl <> 'Synchronisation' ";
			else crit = " AND 1 = 2 ";
			int nbFile = 0;
			MOrderDownload[] downls = so.getDownloadLines(crit,"");
			for (int i = 0; i < downls.length; i++) {
				MOrderDownload newod = new MOrderDownload(ctx0, 0, trx0);
				newod.setClientOrg(so.getAD_Client_ID(), so.getAD_Org_ID());
				PO.copyValues(downls[i], newod);
				newod.setC_Order_ID(poID);
				newod.save(trx0);
				nbFile++;
			}
		//}
			return nbFile;		
	}
	
	public static MOrderDownload getOrderDownloadByType(Ctx ctx, String type, int C_ORder_ID, Trx trx )
	{
		MOrderDownload ord = null;
		String sql = "Select C_OrderDownload_ID from C_OrderDownload where C_Order_ID = ? and Z_FileType = ?  ";
		int OrdNo = DB.getSQLValue(trx, sql, C_ORder_ID, type);
		if(OrdNo>0)
			ord = new MOrderDownload(ctx, OrdNo, trx);
		return ord;
		
	}
	
	
	@UICallout public void setChangeType (String oldChangeType,
			String newChangeType, int windowNo) throws Exception
	{

		if ((newChangeType == null) || (newChangeType.length() == 0))
			return;
		int ids[] = MReference.getAllIDs(MReference.Table_Name, "Name = 'File Types'", get_Trx());
		String fileType = "";
		if(ids.length>0)
		{
			fileType = MRefList.getListName(getCtx(), ids[0], newChangeType);
		}
		if(fileType!=null && !fileType.equals(""))
		{
			set_ValueNoCheck("Z_FileType", fileType);
		}
		set_ValueNoCheck("ChangeType", null);
		MOrder SO = new MOrder(getCtx(),this.getC_Order_ID(),get_Trx());
		String sql = "select C_Order_ID from C_order where POREFERENCE = ? and exists (select 1 from C_DOCTYPEINFO where C_DOCTYPEINFO.C_DOCTYPE_ID = C_order.C_DOCTYPE_ID and C_DOCTYPEINFO.ISSAV = 'Y' )";
		PreparedStatement pstmt =  DB.prepareStatement(sql, get_Trx());
		int index = 1;
        pstmt.setString(index++, SO.getPOReference());
		
		ResultSet rs = pstmt.executeQuery();
		int nbRemb = 0;
        try
        {
            pstmt = DB.prepareStatement(sql, get_Trx());
            while (rs.next())
            {
				MOrder sav = new MOrder(getCtx(), rs.getInt(1), get_Trx());
 				String lst = DB.getSQLValueString( get_Trx(), "select  Z_FileType from Z_EGGOPJ "
						+ "where ((c_bpartner_id is null and C_BP_Group_ID is null)) and c_doctype_id = ? ", sav.getC_DocTypeTarget_ID());
				
				if(lst!=null && lst.contains(fileType))
				{
					MOrderDownload newod = new MOrderDownload(getCtx(), 0,  get_Trx());
					newod.setClientOrg(sav.getAD_Client_ID(), sav.getAD_Org_ID());
					PO.copyValues(this, newod);
					newod.setC_Order_ID(sav.getC_Order_ID());
					newod.setDownloadURL(this.getDownloadURL());
					newod.setName(this.getName());
					newod.set_ValueNoCheck("Z_FileType", fileType);
					newod.setDescription(this.getDescription());
					newod.set_Value("IsArControled", this.get_ValueAsBoolean("IsArControled"));
					newod.set_Value("DateCreated", new Timestamp(System.currentTimeMillis()));
					newod.save(get_Trx());
				}
            }
        }catch (Exception e)
        {
            log.log(Level.SEVERE, "doIt - " + sql, e);
        }
        finally {
			Util.closeCursor(pstmt, rs);
		}
		
	}

	public boolean isIsToNotify() {
		return IsToNotify;
	}

	public void setIsToNotify(boolean isToNotify) {
		IsToNotify = isToNotify;
	}
	
	private void connect() {
		String USER_NAME = "ERPDocumentService";
	    String PASSWORD = "ERPD0c";
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
	
	public long getFileSize(String downloadUrl) {
		// TODO Auto-generated method stub
		String USER_NAME = "ERPDocumentService";
	    String PASSWORD = "ERPD0c";
	    if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		File f = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		long size_kb = 0;
		try
		{
			String url = downloadUrl;
				if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
					f = new File(url); 
				else
				{
					String URL = url;
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
				
				if (f!=null && f.exists()) {
					long bytes = f.length();
					size_kb+=(bytes / 1024);
				}
				

		}
		catch (Exception e)
		{  
			log.log(Level.SEVERE," Erreur récupération taille fichier",  e);
			return 0;

		}
		finally
		{
			Util.closeCursor(pstmt, rs);						
		}
		return size_kb;
	}
}
