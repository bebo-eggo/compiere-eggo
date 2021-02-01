package com.audaxis.compiere.model;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MChat;
import org.compiere.model.MChatEntry;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MPosChat extends X_I_PosChat {

	/** Logger for class MPosOrder */
	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosChat.class);

	public static MPosChat get(Ctx ctx, int I_PosChat_ID,int ad_org_id, Trx trx) {
		MPosChat retValue = null;
		String sql = "SELECT * FROM I_PosChat WHERE I_PosChat_ID=? AND ad_org_id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, I_PosChat_ID);
			pstmt.setInt (2, ad_org_id);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPosChat (ctx, rs, trx);
			}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		return retValue;
	}

	public MPosChat(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}


	public MChat generateChat(){
		MChat chat = generateChatHeader();
		generateEntry(chat);
		return chat;
	}

	/**************************************************************************
	 * 	Generate ChatHeader
	 **************************************************************************/
	public MChat generateChatHeader() {
		int chatID = DB.getSQLValue(get_Trx(),"Select CM_Chat_ID from CM_Chat where description=?",this.getDocumentNo());
		if(chatID > 0)
			return new MChat(getCtx(),chatID,get_Trx());
		else{
			int orderID = DB.getSQLValue(get_Trx(),"Select C_Order_ID from C_Order where documentno=?",this.getDocumentNo());
			if(orderID < 1)
				throw new CompiereException("La commande liée au chat n'existe pas");
			MChat chat = new MChat(getCtx(),0,get_Trx());
			chat.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
			chat.set_ValueNoCheck("CreatedBy",this.getCreatedBy());
			chat.set_ValueNoCheck("UpdatedBy",this.getUpdatedBy());
			chat.setAD_Table_ID(259);
			chat.setRecord_ID(orderID);
			chat.setConfidentialType("A");
			chat.setModerationType("N");
			chat.setDescription(this.getDocumentNo());
			chat.save(get_Trx());
			return chat;
		}
	}

	/**************************************************************************
	 * 	Generate Entry
	 **************************************************************************/
	public MChat generateEntry(MChat chat) {
		MChatEntry entry = new MChatEntry(getCtx(),0,get_Trx());
		entry.setCM_Chat_ID(chat.get_ID());
		entry.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
		entry.set_ValueNoCheck("CreatedBy",this.getCreatedBy());
		entry.set_ValueNoCheck("UpdatedBy",this.getUpdatedBy());
		entry.setCharacterData(getCharacterData());
		entry.setChatEntryType("N");
		entry.setConfidentialType("A");
		entry.setModeratorStatus("P");
		entry.save(get_Trx());
		DB.executeUpdate("UPDATE CM_CHATENTRY SET CREATED=?,UPDATED=? WHERE CM_CHATENTRY_ID=?",new Object[]{getCreated(),getUpdated(),entry.get_ID()},get_Trx());
		return chat;
	}
}
