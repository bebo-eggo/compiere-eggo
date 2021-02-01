package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;

import org.apache.velocity.runtime.parser.node.SetExecutor;
import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.model.MClient;
import org.compiere.model.MMailText;
import org.compiere.model.MMovement;
import org.compiere.model.MPInstance;
import org.compiere.model.MPInstancePara;
import org.compiere.model.MProcess;
import org.compiere.model.MProcessPara;
import org.compiere.model.MTable;
import org.compiere.model.X_M_Product_Category;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.process.SvrProcess;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.EMail;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ProcessInfoVO;

import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.ecenter.compiere.model.X_Z_P_SENDMAIL;

public class SendMailVendor extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer {

	/**	Client to be imported to		*/
	private int				p_AD_Client_ID = 0;
	
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = ((BigDecimal)element.getParameter()).intValue();
			else 
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String getOutputFileNameSimple() {
		// TODO Auto-generated method stub
		return "_VendorStats.xlsx";
	}

	@Override
	protected void buildOutputFile() {
		// TODO Auto-generated method stub
		MClient client = MClient.get(getCtx());
		//Parcourir la table de parametrage actif!
		String sql = "Select zps.Z_P_SendMail_ID,zps.R_MAILTEXT_ID, zps.AD_PRINTFORMAT_ID, "
				+ "zps.EMAIL_FROM, zps.EMAIL_TO, "
				+ "cb.NAME as NameFourn, TO_CHAR(trunc(Sysdate)-7,'DD/MM/YYYY') as Monday, "
				+ "TO_CHAR(trunc(Sysdate)-1,'DD/MM/YYYY') as Friday,"
				+ "TO_CHAR(trunc(Sysdate),'DD/MM/YYYY') as Today, "
				+ "zps.C_BPARTNER_ID, "//10
				+ "zps.Z_AD_ORG_ID as AD_ORG_ID, zps.Y_MARQUE_ID, zps.Z_GAMME_ID, zps.M_PRODUCT_CATEGORY_ID, zps.Z_S_FAMILLE_ID, "
				+ "zps.Z_S_S_FAMILLE_ID, zps.Z_S_S_S_FAMILLE_ID, zps.EMAIL_C,zps.EMAIL_CC, ym.NAME as NAMEMARQUE, zps.AD_Client_ID"
				+ " from Z_P_SendMail zps "
				+ "left join C_BPartner cb on cb.C_BPartner_ID = zps.C_BPartner_ID "
				+ "left join Y_Marque ym on ym.Y_Marque_ID = zps.Y_Marque_ID where zps.IsActive = 'Y' and zps.AD_Client_ID = ? ORDER BY AD_PRINTFORMAT_ID";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int index = 1;
		MPrintFormat format = null;
		MMailText mText = null;
		int errors = 0;
		int count = 0;
		File attachment = null;
		int AD_PrintFormat = 0;
		int R_MailText = 0;
		int processID = 0;
		ArrayList<SendObject> listsSends = new ArrayList<SendObject>();
		try
		{
			pstmt = DB.prepareStatement (sql.toString (), get_TrxName());
			pstmt.setInt(index++, p_AD_Client_ID==0?getAD_Client_ID():p_AD_Client_ID);
			rs = pstmt.executeQuery ();
			while (rs.next())
			{
				X_Z_P_SENDMAIL send = new X_Z_P_SENDMAIL(getCtx(), rs.getInt(1), get_Trx());
				SendObject SendO = new SendObject(send, rs.getString("NameFourn"), rs.getString("NAMEMARQUE"), rs.getString("Monday"), 
						rs.getString("Friday"), rs.getString("Today"));
				SendO.getSend().setAD_PrintFormat_ID(rs.getInt(3));
				SendO.getSend().setC_BPartner_ID(rs.getInt(10));
				SendO.getSend().setAD_Org_ID(rs.getInt(11));
				SendO.getSend().setY_Marque_ID(rs.getInt(12));
				SendO.getSend().setZ_Gamme_ID(rs.getInt(13));
				SendO.getSend().setM_Product_Category_ID(rs.getInt(14));
				SendO.getSend().setZ_S_Famille_ID(rs.getInt(15));
				SendO.getSend().setZ_S_S_Famille_ID(rs.getInt(16));
				SendO.getSend().setZ_S_S_S_Famille_ID(rs.getInt(17));
				SendO.getSend().setEmail_C(rs.getString(18));
				SendO.getSend().setEmail_Cc(rs.getString(19));
				SendO.getSend().setEMail_From(rs.getString(4));
				SendO.getSend().setEMail_To(rs.getString(5));
				SendO.getSend().setR_MailText_ID(rs.getInt(2));
				listsSends.add(SendO);
			}
		}catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		try {
			for (int j = 0; j < listsSends.size(); j++) {
				SendObject sendO = listsSends.get(j);
					//Mettre dans un Object les infos voulues !
					//Info Email
					if(R_MailText!=sendO.getSend().getR_MailText_ID())
						mText = new MMailText(getCtx(), sendO.getSend().getR_MailText_ID(), get_Trx());
					String sujet = mText.getMailHeader().replace("@NameFourn@", sendO.getNameFourn()!=null?sendO.getNameFourn():sendO.getNAMEMARQUE());
					String corps = mText.getMailText().replace("@DateFrom@", sendO.getMonday());
					corps = corps.replace("@DateTo@", sendO.getFriday());
					corps = corps.replace("@DateStock@", sendO.getToday());
					EMail email = null;
					if(sendO.getSend().getEMail_To()!=null && sendO.getSend().getEMail_To().length()>0)
					{
						String EMAIL_Cs[] = sendO.getSend().getEMail_To().split(";");
						if(EMAIL_Cs.length == 1 || (email==null && EMAIL_Cs.length>0))
							email  = client.createEMail(EMAIL_Cs[0], "", sujet, null);
						if(EMAIL_Cs.length>1)
							for (int i = 1; i < EMAIL_Cs.length; i++) {
								email.addTo(EMAIL_Cs[i],"");
							}	
					}
					if(sendO.getSend().getEmail_C()!=null && sendO.getSend().getEmail_C().length()>0)
					{
						String EMAIL_Cs[] = sendO.getSend().getEmail_C().split(";");
						if(EMAIL_Cs.length>0)
							for (int i = 0; i < EMAIL_Cs.length; i++) {
								email.addCc(EMAIL_Cs[i]);
							}	
					}
					if(sendO.getSend().getEmail_Cc()!=null && sendO.getSend().getEmail_Cc().length()>0)
					{
						String EMAIL_Cs[] = sendO.getSend().getEmail_Cc().split(";");
						if(EMAIL_Cs.length>0)
							for (int i = 0; i < EMAIL_Cs.length; i++) {
								email.addBcc(EMAIL_Cs[i]);
							}	
					}
					if (email == null || !email.isValid())
					{
						addLog (" @RequestActionEMailError@ Invalid EMail: " + sendO.getSend().getEMail_To());
						errors++;
						continue;
					}
					if (mText.isHtml())
						email.setMessageHTML(sujet, corps);
					else
					{
						email.setSubject (sujet);
						email.setMessageText (corps);
					}
					
					//Générer le fichier PDF à envoyer
					if(sendO.getSend().getAD_PrintFormat_ID() !=AD_PrintFormat )
					{
						AD_PrintFormat = sendO.getSend().getAD_PrintFormat_ID();
						format=new MPrintFormat(getCtx(),AD_PrintFormat, get_Trx());
						if(format == null)
						{
							addLog ("No format for printformat ID - " +AD_PrintFormat );
							continue;
						}
						format.setLanguage(Language.getLanguage(getCtx().getContext(getCtx().getContext("AD_Language"))));		//	BP Language if Multi-Lingual
						format.setTranslationLanguage(Language.getLanguage(getCtx().getContext("AD_Language")));
						//Processus lié au format
						processID = DB.getSQLValue(get_Trx(), "Select MIN(AD_Process_ID) from AD_Process where IsActive='Y' and AD_PrintFormat_ID = ?", AD_PrintFormat);
						if(processID<0)
						{
							addLog ("No active process for printformat ID - " +AD_PrintFormat );
							continue;
						}
					}
					MProcess process = new MProcess(getCtx(), processID,
							get_Trx());
					MPInstance instance = new MPInstance(getCtx(), processID, -1);
					if (!instance.save()) {
						addLog("Print Stock Hebdo Process No Instance");
					}
					//Ajouter les parametres dans MPInstance PARA
					
					
					ProcessInfo processInfo = new ProcessInfo(
							process.getName(), processID);
					processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
					List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
					//Faire une bouble sur les parametres

					String p_FileFormat = "XLS";
					File temp = File.createTempFile("Export"+getCtx().getAD_User_ID(), ".xlsx");
					ReportEngine re;
				 
//				Engine
					//MTable mt = new MTable(getCtx(),format.getAD_Table_ID(),get_Trx());
					String tableName = DB.getSQLValueString(get_Trx(), "Select TableName from AD_Table where AD_Table_ID = ?", format.getAD_Table_ID());
					Query query = new Query(tableName);
					//query.addRestriction("AD_PInstance_ID", Query.EQUAL, getAD_PInstance_ID());
					PrintInfo info = new PrintInfo("", format.getAD_Table_ID(),getAD_PInstance_ID(),0);
					info.setCopies(1);
					int seqno = 10;
					MPInstancePara mpia = null;
					HashMap<String, ValueNamePair> parametersX = new HashMap<String, ValueNamePair>();
					int idsParams[] = MProcessPara.getAllIDs(MProcessPara.Table_Name, "IsActive = 'Y' and AD_Process_ID = "+processID+ " ORder by SeqNo ASC", get_Trx());
					//mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), 50);
					//mpia.setParameter("AD_Client_ID", (p_AD_Client_ID==0?getAD_Client_ID():p_AD_Client_ID));
					//mpia.save();
					for (int i = 0; i < idsParams.length; i++) {
						MProcessPara mpp = new MProcessPara(getCtx(), idsParams[i], get_Trx());
						//if(mpp.getColumnName().equals("AD_Client_ID"))
						//	continue;
						if(mpp.getColumnName().equals("AD_Org_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getAD_Org_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("C_BPartner_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getC_BPartner_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("M_Product_Category_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getM_Product_Category_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("Z_S_Famille_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getZ_S_Famille_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("Z_S_S_Famille_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getZ_S_S_Famille_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("Z_S_S_S_Famille_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getZ_S_S_S_Famille_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("Y_Marque_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getY_Marque_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("Z_Gamme_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getZ_Gamme_ID());
							mpia.save();
							continue;
						}
						if(mpp.getColumnName().equals("AD_Client_ID"))
						{
							mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
							mpia.setParameter(mpp.getColumnName(), sendO.getSend().getAD_Client_ID());
							mpia.save();
							continue;
						}
					}
					
					if(instance.getAD_PInstance_ID()>0)
					{
						query.addRestriction("AD_PInstance_ID", Query.EQUAL, instance.getAD_PInstance_ID());
					}	
					
					commit();
					//ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
					//		.toArray(new ProcessInfoParameter[pipList.size()]);
					//processInfo.setParameter(parameters);
					boolean t = startProcess(process.getProcedureName(), instance); 
					if(!t)
						addLog("Print Stock Hebdo error procedure");
					
					re = new ReportEngine(getCtx(), format, query, info);
					
					//re.createCSV(temp,',', re.getPrintFormat().getLanguage());
					re.createEXCEL(temp, re.getPrintFormat().getLanguage());
					File des = new File(temp.getParent()+File.separator+"Export_"+(sendO.getNameFourn()!=null?sendO.getNameFourn():sendO.getNAMEMARQUE())+"_"+getOutputFileNameSimple());
					copyFile(temp, des);	
					if(des!=null)
						email.addAttachment(des);
					
					String msg = email.send();
					if (msg.equals(EMail.SENT_OK))
					{
						addLog ("@RequestActionEMailOK@ - " + sendO.getSend().getEMail_To());
						count++;
					}
					else
					{
						addLog (" @RequestActionEMailError@ " + sujet
						  + " - " + sendO.getSend().getEMail_To());
						errors++;
					}
					
					
				}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		
	}
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
	
	private boolean startProcess (String ProcedureName, MPInstance pInstance)
	{
		int AD_PInstance_ID = pInstance.getAD_PInstance_ID();
		//  execute on this thread/connection
		log.info(ProcedureName + "(" + AD_PInstance_ID + ")");
		String sql = "{call " + ProcedureName + "(?)}";
		try
		{
			DB.executeCall(sql, AD_PInstance_ID);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			pInstance.setResult(MPInstance.RESULT_ERROR);
			pInstance.setErrorMsg(e.getLocalizedMessage());
			return false;
		}
		pInstance.setResult(MPInstance.RESULT_OK);
		return true;
	}   //  startProcess
	
	private class SendObject {
		private X_Z_P_SENDMAIL send;
		private String NameFourn;
		private String NAMEMARQUE;
		private String monday;
		private String Friday;
		private String Today;
		public X_Z_P_SENDMAIL getSend() {
			return send;
		}
		public void setSend(X_Z_P_SENDMAIL send) {
			this.send = send;
		}
		public String getNameFourn() {
			return NameFourn;
		}
		public void setNameFourn(String nameFourn) {
			NameFourn = nameFourn;
		}
		public String getNAMEMARQUE() {
			return NAMEMARQUE;
		}
		public void setNAMEMARQUE(String nAMEMARQUE) {
			NAMEMARQUE = nAMEMARQUE;
		}
		public String getMonday() {
			return monday;
		}
		public void setMonday(String monday) {
			this.monday = monday;
		}
		public String getFriday() {
			return Friday;
		}
		public void setFriday(String friday) {
			Friday = friday;
		}
		public String getToday() {
			return Today;
		}
		public void setToday(String today) {
			Today = today;
		}
		private SendObject(X_Z_P_SENDMAIL send, String nameFourn,
				String nAMEMARQUE, String monday, String friday, String today) {
			super();
			this.send = send;
			NameFourn = nameFourn;
			NAMEMARQUE = nAMEMARQUE;
			this.monday = monday;
			Friday = friday;
			Today = today;
		}
		
		
		
		
	}
}
