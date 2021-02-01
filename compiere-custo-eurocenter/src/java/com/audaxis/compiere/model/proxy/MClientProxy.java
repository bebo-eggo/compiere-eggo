package com.audaxis.compiere.model.proxy;

import org.compiere.model.MClient;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.BasicProxy;

public class MClientProxy extends BasicProxy<MClient> {

	public MClientProxy(MClient po) {
		super(po);
	}

	public String getParameter(String key) {
		String clientList = DB.getSQLValueString(null, "Select upper(Name) from AD_Reference "
				+ "where EXISTS (Select 1 from AD_REF_LIST where Value = 'CLIENT_ID' " +
				"and AD_REF_LIST.NAME like ? and AD_Reference.AD_REFERENCE_ID = AD_REF_LIST.AD_REFERENCE_ID)","%"+getPO().getAD_Client_ID()+"%");
		
		String sql = "select name from AD_Ref_List where ad_reference_id in (select ad_reference_id from ad_reference where upper(name) = upper('" 
				+ clientList
				+ "')) and upper(value) = upper(?)";
		String ret = DB.getSQLValueString((Trx)null, sql, key);
		//TODO Il faut mettre en CCache pour les performances
		return ret;
	}

	public int getParamaterDocType(String key) {
		String docTypeName = getParameter(key);
		int C_DocType_ID = DB.getSQLValue(null, "select c_doctype_id from c_doctype where isActive = 'Y' and upper(Name) like upper('%" + docTypeName + "%')  and AD_Client_ID = "+getPO().getAD_Client_ID() );
		return C_DocType_ID;
		
	}
	
	public String getClientCheck()
	{
		String ret = " AND AD_Client_ID = " + getPO().getAD_Client_ID() + " ";
		return ret;
	}

}
