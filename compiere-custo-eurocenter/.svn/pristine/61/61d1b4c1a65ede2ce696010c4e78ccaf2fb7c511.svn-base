package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.apache.commons.io.FileUtils;
import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.framework.QueryRestriction;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.MSession;
import org.compiere.model.X_T_BOMDetails;
import org.compiere.model.X_T_InventoryValue;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.print.ReportServer;
import org.compiere.process.BOMListing;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.process.SvrProcess;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Language;
import org.compiere.util.Msg;

import ru.compiere.report.RusReportStarter;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.export.ExportEngine;
import com.audaxis.compiere.export.ExportEngineFactory;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.model.X_ZT_DAOAExport;
import com.audaxis.compiere.model.X_ZT_PrintArco;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;
import com.qoppa.pdf.c.ad;

public class ExportDAOA extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer
{
	
	private Timestamp DateDocFrom ;
	private Timestamp DateDocTo ;
	private int C_BPartner_ID;
	private int p_DocType_ID;
	String p_File = null;
	String p_File2 = null;
	File ret = null;
	private int AD_Client_ID = -1;
	
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		prepare(getParameter());
		AD_Client_ID = getAD_Client_ID();
	}
	
	protected void prepare(ProcessInfoParameter[] params) {

		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("DateDoc"))
			{
				DateDocFrom = getParameterAsTimestamp("DateDoc");
				DateDocTo = getParameter_ToAsTimestamp("DateDoc");
			}
			else if(name.equals("C_BPartner_ID"))
				C_BPartner_ID = getParameterAsInt("C_BPartner_ID");
			else if(name.equals("C_DocType_ID"))
				p_DocType_ID = getParameterAsInt("C_DocType_ID");
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	} // prepare
	
	private void copyFile(File src, File dest) throws IOException
	{  
		FileInputStream fis = new FileInputStream(src);
	     FileOutputStream fos = new FileOutputStream(dest);

	     java.nio.channels.FileChannel channelSrc   = fis.getChannel();
	     java.nio.channels.FileChannel channelDest = fos.getChannel();

	     channelSrc.transferTo(0, channelSrc.size() , channelDest);

	     fis.close();
	     fos.close();
	}

	@Override
	protected String getOutputFileNameSimple() {
		// TODO Auto-generated method stub
		return "_ExportDAOA.xlsx";
	}

	@Override
	protected void buildOutputFile() {
		
		String sql = "";
				//"Select distinct zia.M_REQUISITION_ID from RV_Requisition zia where not exists (select 1 from ZT_DAOAEXPORT "
				//+ "where ZT_DAOAEXPORT.AD_Client_ID = zia.AD_Client_ID and ZT_DAOAEXPORT.M_REQUISITION_ID = zia.M_REQUISITION_ID)"
				//+ " AND zia.AD_Client_ID = ? and trunc(zia.DATEDOC) BETWEEN ? and ?   ";
//		if(C_BPartner_ID!=0)
//		{
//			sql = sql + " and zia.C_BPARTNER_ID = ?";
//		}
//		if(p_DocType_ID!=0)
//		{
//			sql = sql + " and zia.C_DOCTYPE_ID = ?";
//		}
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		int index = 1;
//		int count = 0;
//		File file = null;
//		try {
//			pstmt = DB.prepareStatement (sql, get_Trx());
//			//pstmt.setInt (index++, p_User3_ID);
//			pstmt.setInt (index++, getAD_Client_ID());
//			pstmt.setTimestamp(index++, DateDocFrom);
//			pstmt.setTimestamp(index++, DateDocTo);
//			if(C_BPartner_ID!=0)
//			{
//				pstmt.setInt (index++, C_BPartner_ID);
//			}
//			if(p_DocType_ID!=0)
//			{
//				pstmt.setInt (index++, p_DocType_ID);
//			}
//			rs = pstmt.executeQuery ();
//			while (rs.next())
//			{
//				X_ZT_DAOAExport ztpa = new X_ZT_DAOAExport(getCtx(), 0, null);
//				ztpa.setM_Requisition_ID(rs.getInt(1));
//				ztpa.setUser3_ID(getAD_User_ID());
//				ztpa.setAD_PInstance_ID(getAD_PInstance_ID());
//				ztpa.save();
//				count++;
//			}
		try {
			Object[] params = {0,getAD_PInstance_ID(),getAD_User_ID(),getAD_User_ID(),getAD_User_ID(),getAD_Client_ID(),DateDocFrom,DateDocTo};
			//Nouvelle manière d'insérer
			sql = "INSERT INTO ZT_DAOAEXPORT (AD_CLIENT_ID , AD_ORG_ID , AD_PINSTANCE_ID , CREATED , CREATEDBY , ISACTIVE , UPDATED , UPDATEDBY , USER3_ID ,M_REQUISITION_ID ,  ZT_DAOAEXPORT_ID)"
					+ "Select t.*, AD_SEQUENCE_NEXTNO('ZT_DAOAExport') as ZT_DAOAEXPORT_ID from ("
					+ "Select distinct zia.AD_CLIENT_ID, ? as AD_ORG_ID,? as AD_PINSTANCE_ID, SYSDATE as CREATED,? as CREATEDBY, 'Y' as ISACTIVE,SYSDATE as UPDATED,? as UPDATEDBY,"
					+ " ? as USER3_ID,zia.M_REQUISITION_ID   from RV_Requisition zia where not exists (select 1 from ZT_DAOAEXPORT "
					+ "where ZT_DAOAEXPORT.AD_Client_ID = zia.AD_Client_ID and ZT_DAOAEXPORT.M_REQUISITION_ID = zia.M_REQUISITION_ID)"
					+ " AND zia.AD_Client_ID = ? and trunc(zia.DATEDOC) BETWEEN ? and ? ";
			if(C_BPartner_ID!=0)
			{
				sql = sql + " and zia.C_BPARTNER_ID = "+C_BPartner_ID;
			}
			if(p_DocType_ID!=0)
			{
				sql = sql + " and zia.C_DOCTYPE_ID = "+p_DocType_ID;
			}
			sql = sql +")t";
			int count = DB.executeUpdate(sql, params, null);
			
			commit();
			
			MPrintFormat format;
			String p_FileFormat = "XLS";
			File temp = File.createTempFile("U"+getCtx().getAD_User_ID(), ".xlsx");
			ReportEngine re;
			try{
				int p_AD_PrintFormat_ID = DB.getSQLValue(get_Trx(), "select max(AD_PrintFormat_ID) from AD_PrintFormat where name like 'Export DAOA'"); 
				format=new MPrintFormat(getCtx(),p_AD_PrintFormat_ID, get_Trx());
				int copies = 1;
				format.setLanguage(Language.getLanguage(getCtx().getContext(getCtx().getContext("AD_Language"))));		//	BP Language if Multi-Lingual
				format.setTranslationLanguage(Language.getLanguage(getCtx().getContext("AD_Language")));
				Query query = new Query("RV_Requisition_DAOA");
				query.addRestriction("AD_PInstance_ID", Query.EQUAL, getAD_PInstance_ID());
				PrintInfo info = new PrintInfo("",DB.getSQLValue(get_Trx(), "Select AD_Table_ID from AD_Table where TableName = 'RV_Requisition_DAOA'"),getAD_PInstance_ID(),0);
				info.setCopies(copies);
				re = new ReportEngine(getCtx(), format, query, info);
				
				if (p_FileFormat.equals("CSV"))
					re.createCSV(temp, ',', re.getPrintFormat().getLanguage());
				else if (p_FileFormat.equals("XLS"))
					re.createEXCEL(temp, re.getPrintFormat().getLanguage());
				else if (p_FileFormat.equals("SSV"))
					re.createCSV(temp, ';', re.getPrintFormat().getLanguage());
				else if (p_FileFormat.equals("TXT"))
					re.createCSV(temp,'\t' , re.getPrintFormat().getLanguage());
				else if (p_FileFormat.equals("XML"))
					re.createXML(temp);
				else if (p_FileFormat.equals("PDF"))
					re.createPDF(temp);
				
				File des = new File(temp.getParent()+File.separator+"U"+getCtx().getAD_User_ID()+"_"+getAD_PInstance_ID()+"_"+getOutputFileNameSimple() );
				copyFile(temp, des);	
			
				addLog("Nombre de demandes exportée : " + count);
			}catch(Exception e){
				throw new CompiereException(e.getMessage());
			}finally{
				//Util.closeCursor(pstmt, rs);
			}
		
		}catch(Exception e){
			throw new CompiereException(e.getMessage());
		}
	}
}
