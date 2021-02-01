package com.audaxis.erp.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.concurrent.CopyOnWriteArrayList;

import org.compiere.util.*;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.OrderDownload;
import com.audaxis.erp.json.OrderDownloadList;
import com.audaxis.erp.json.SetOrderDownloadResult;

import Util.WSUtil;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class SetOrderDownloadService extends CompiereSessionFullService implements ISetOrderDownloadService {

	private int client_ID = 0;
	
	private MOrg org = null;
	private MOrder mo = null;
	private MOrderDownload mod = null;
	private boolean okx= false;
	
	@Override
	public SetOrderDownloadResult setOrderDownload(OrderDownload ordDown) {
		// TODO Auto-generated method stub
		SetOrderDownloadResult ret = new SetOrderDownloadResult();
		ret.error = SetOrderDownloadResult.E000;
		client_ID = getCtx().getAD_Client_ID();
		
		try{
		
		if(client_ID == 0)
		{
			ret.error = SetOrderDownloadResult.E002;
			ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E002);
			ret.c_OrderDownload_ID = 0;
			log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E002), "", ret.errordesc));
			return ret;
		}
		
		if(ordDown.ORDER_ID!=null && ordDown.ORDER_ID.length()>0 && !ordDown.ORDER_ID.equals("0"))
		{
			int v_order_ID = 0;
			try
		    {
				v_order_ID = Integer.parseInt(ordDown.ORDER_ID.trim());

		    }
		    catch (NumberFormatException nfe)
		    {
		    	ret.error = SetOrderDownloadResult.E011;
		    	ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011)+" : "+nfe.toString();
				ret.c_OrderDownload_ID = 0;
				log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011), "", ret.errordesc));
				nfe.printStackTrace();
				return ret;
		    }
			
			mo = new MOrder(getCtx(), v_order_ID, get_Trx());
			if(mo==null)
			{
				ret.error = SetOrderDownloadResult.E011;
				ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011);
				ret.c_OrderDownload_ID = 0;
				log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011), "", ret.errordesc));
				return ret;
			}
		}
		
		if((ordDown.ORDERNO == null || ordDown.ORDERNO.length()==0) 
				&& (ordDown.POREF== null || ordDown.POREF.length()==0) )
		{
			ret.error = SetOrderDownloadResult.E011;
			ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011);
			ret.c_OrderDownload_ID = 0;
			log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011), "", ret.errordesc));
			return ret;
		}
		
		if(ordDown.NAME == null && ordDown.NAME.length()==0)
		{
			ret.error = SetOrderDownloadResult.E030;
			ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E030);
			log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E030), "", ret.errordesc));
			return ret;
		}
		
		if(ordDown.DOWNLOADURL == null && ordDown.DOWNLOADURL.length()==0)
		{
			ret.error = SetOrderDownloadResult.E041;
			ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E041);
			log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E041), "", ret.errordesc));
			return ret;
		}
		
		if(ordDown.ORDERNO != null && ordDown.ORDERNO.length()>0 && mo==null)
		{
			mo =  WSUtil.getOrderByDocNo(getCtx(), ordDown.ORDERNO,"Y", get_Trx());
			if(mo==null)
			{
				ret.error = SetOrderDownloadResult.E011;
				ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011);
				ret.c_OrderDownload_ID = 0;
				log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E011), "", ret.errordesc));
				return ret;
			}
		}
		
		if(ordDown.MAG != null && ordDown.MAG.length()>0 && !ordDown.MAG.equals("0")){
			org = WSUtil.getOrgByValue(getCtx(),client_ID,ordDown.MAG);
		}
			if((ordDown.MAG == null || ordDown.MAG.length()>0 || org == null) && mo!=null)
			{
				org = new MOrg(getCtx(), mo.getAD_Org_ID(), get_Trx());
			}
			else
			{
				org = WSUtil.getOrgByValue(getCtx(),client_ID,"0");
			}
		
		
		
		if(ordDown.FROMEXTSOURCE==null)
			ordDown.FROMEXTSOURCE = "Y";
		else
			if(!((ordDown.FROMEXTSOURCE.equals("N") || ( ordDown.FROMEXTSOURCE.equals("Y")))))
			{
				ordDown.FROMEXTSOURCE = "Y";
			}
		
		Timestamp ti = null;
		if(ordDown.DATECREATED == null || ordDown.DATECREATED.length()==0)
		{
			ti = new Timestamp(System.currentTimeMillis());
		}else
		{
			try {
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
				Date date = null;
				date = simpleDateFormat.parse(ordDown.DATECREATED);
				long time = date.getTime();
				ti = new Timestamp(time);
			}
			catch (Exception e) {
				// TODO: handle exception
				ret.error = SetOrderDownloadResult.E031;
				ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E031)+" : "+e.toString();
				ret.c_OrderDownload_ID = 0;	
				log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E031), "", ret.errordesc));
				e.printStackTrace();
				return ret;
			}
			
		}
		
		
		
		if(mo != null && mo.getC_Order_ID() >0)
		{
			mod = new MOrderDownload(getCtx(), 0, get_Trx());
			mod.setAD_Org_ID(org.getAD_Org_ID());
			mod.setDownloadURL(ordDown.DOWNLOADURL);
			mod.setC_Order_ID(mo.getC_Order_ID());
			mod.setZ_FileType(ordDown.Z_FILETYPE);
			mod.setDescription(ordDown.DESCRIPTION);
			mod.set_ValueNoCheck("Z_FromExtSource", ordDown.FROMEXTSOURCE);
			mod.set_ValueNoCheck("DateCreated",ti);
			mod.setName(ordDown.NAME);
			if(!mod.save())
			{
				ret.error = SetOrderDownloadResult.E051;
				ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E051);
				log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E051), "", ret.errordesc));
				return ret;
			}
			okx = true;
		}else
			if(ordDown.POREF!=null)
			{
				//Pour tous les OA/OV du POREF
				CopyOnWriteArrayList<Integer> OrderIdList = WSUtil.getOrdersByPoRef(getCtx(), ordDown.POREF, "Y", get_Trx());
				for (int i = 0; i < OrderIdList.size(); i++) {
					MOrderDownload mod = new MOrderDownload(getCtx(), 0, get_Trx());
					mod.setAD_Org_ID(org.getAD_Org_ID());
					mod.setDownloadURL(ordDown.DOWNLOADURL);
					mod.setC_Order_ID(OrderIdList.get(i));
					mod.setZ_FileType(ordDown.Z_FILETYPE);
					mod.setDescription(ordDown.DESCRIPTION);
					mod.set_ValueNoCheck("Z_FromExtSource", ordDown.FROMEXTSOURCE);
					mod.set_ValueNoCheck("DateCreated",ti);
					mod.setName(ordDown.NAME);
					if(!mod.save())
					{
						ret.error = SetOrderDownloadResult.E051;
						ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E051);
						log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E051), "", ret.errordesc));
						return ret;
					}
					okx = true;
				}
			}

		if(okx) {
			ret.error = SetOrderDownloadResult.E507;
			ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E507);
			if(mod!=null)
				ret.c_OrderDownload_ID = mod.getC_OrderDownload_ID();
			//log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E507), "", ret.errordesc));
			return ret;
		}
		}
		catch(Exception ex)
		{
			ret.error = SetOrderDownloadResult.E999;
			ret.errordesc = SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E999)+" : "+ex.toString();
			ret.c_OrderDownload_ID = 0;	
			log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E999), "", ret.errordesc));
			ex.printStackTrace();
			return ret;
		}
		
		return ret;
	}

	
	
	@Override
	public OrderDownload getOrderDownloadByName(String Name, int c_order_id) {
		
		OrderDownload ret = new OrderDownload();
		
		if(Name==null || Name.length()==0)
		{
			ret.ORDERDOWNLOAD_ID = ""+-1;
			ret.NAME = Name;
			ret.ORDER_ID = ""+c_order_id;
			return ret; 
		}
		
		if(c_order_id<=0)
		{
			ret.ORDERDOWNLOAD_ID = ""+-1;
			ret.NAME = Name;
			ret.ORDER_ID = ""+c_order_id;
			return ret; 
		}
		
		String sql = "select od.C_ORDERDOWNLOAD_ID, xx.XX_ISPP " +
	            "      from c_orderdownload od left join XX_PARAMFILETYPE xx on xx.Z_FILETYPE = od.Z_FILETYPE " +
	            "      WHERE od.C_ORDER_ID = ?" +
	            "     AND   LOWER(od.name) = LOWER(?)";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int i=1;
			pstmt = DB.prepareStatement(sql,get_Trx());
			pstmt.setInt(i++, c_order_id);
			pstmt.setString(i++, Name);
			rs = pstmt.executeQuery();
			if (rs.next ())
			{
				MOrderDownload mod = new MOrderDownload(getCtx(), rs.getInt(1), get_Trx());
				MOrder mo = new MOrder(getCtx(), c_order_id, get_Trx());
				ret.NAME = mod.getName();
				ret.ORDER_ID = ""+mod.getC_Order_ID();
				ret.ORDERDOWNLOAD_ID = ""+mod.getC_OrderDownload_ID();
				ret.ORDERNO = mo.getDocumentNo();
				ret.POREF = mo.getPOReference();
				ret.Z_FILETYPE = mod.getZ_FileType();
				ret.FROMEXTSOURCE = mod.get_ValueAsString("Z_FromExtSource");
				if(mod.get_ValueAsTimestamp("DateCreated")!=null) {
					Timestamp ti = mod.get_ValueAsTimestamp("DateCreated");
					String DateCreated = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(ti);
					ret.DATECREATED = DateCreated;
				}
				ret.DOWNLOADURL = mod.getDownloadURL();
				ret.DESCRIPTION = mod.getDescription();
				ret.isSoTrx=""+(mo.isSOTrx()?"Y":"N");
				ret.isDevis=""+(mo.get_ValueAsBoolean("IsDevis")?"Y":"N");
			}
		}catch (SQLException ex) {
			ret.ORDER_ID = ""+-1;
			ex.printStackTrace();
			return ret;
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		
		if(ret.ORDERDOWNLOAD_ID==null || ret.ORDERDOWNLOAD_ID.length()==0)
		{
			ret.ORDERDOWNLOAD_ID = ""+-1;
			ret.NAME = Name;
			ret.ORDER_ID = ""+c_order_id;
			return ret; 
		}
		
		return ret;
	}
	
	@Override
	public OrderDownload getOrderDownloadByID(int c_orderDownload_id) {
		
		OrderDownload ret = new OrderDownload();
		
		if(c_orderDownload_id<=0)
		{
			ret.ORDERDOWNLOAD_ID = ""+c_orderDownload_id;
			return ret; 
		}
		
		String sql = "select od.C_ORDERDOWNLOAD_ID,od.C_Order_ID, xx.XX_ISPP " +
	            "      from c_orderdownload od left join XX_PARAMFILETYPE xx on xx.Z_FILETYPE = od.Z_FILETYPE " +
	            "      WHERE od.C_ORDERDOWNLOAD_ID = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int i=1;
			pstmt = DB.prepareStatement(sql,get_Trx());
			pstmt.setInt(i++, c_orderDownload_id);
			rs = pstmt.executeQuery();
			if (rs.next ())
			{
				MOrderDownload mod = new MOrderDownload(getCtx(), rs.getInt(1), get_Trx());
				MOrder mo = new MOrder(getCtx(), rs.getInt(2), get_Trx());
				ret.NAME = mod.getName();
				ret.ORDER_ID = ""+mod.getC_Order_ID();
				ret.ORDERDOWNLOAD_ID = ""+mod.getC_OrderDownload_ID();
				ret.ORDERNO = mo.getDocumentNo();
				ret.POREF = mo.getPOReference();
				ret.Z_FILETYPE = mod.getZ_FileType();
				ret.FROMEXTSOURCE = mod.get_ValueAsString("Z_FromExtSource");
				if(mod.get_ValueAsTimestamp("DateCreated")!=null) {
					Timestamp ti = mod.get_ValueAsTimestamp("DateCreated");
					String DateCreated = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(ti);
					ret.DATECREATED = DateCreated;
				}
				ret.DOWNLOADURL = mod.getDownloadURL();
				ret.DESCRIPTION = mod.getDescription();
				ret.isSoTrx=""+(mo.isSOTrx()?"Y":"N");
				ret.isDevis=""+(mo.get_ValueAsBoolean("IsDevis")?"Y":"N");
				ret.public_prive=rs.getString(3);
			}
		}catch (SQLException ex) {
			ret.ORDERDOWNLOAD_ID = ""+-1;
			ex.printStackTrace();
			return ret;
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		
		if(ret.ORDERDOWNLOAD_ID==null || ret.ORDERDOWNLOAD_ID.length()==0)
		{
			ret.ORDERDOWNLOAD_ID = ""+-1;
			return ret; 
		}
		
		return ret;
	}

	public int deleteOrderDownloadByID(int c_orderDownload_id)
	{
		int ret = 0;
		
		MOrderDownload mod = new MOrderDownload(getCtx(), c_orderDownload_id, get_Trx());
		if(mod!=null && mod.getC_OrderDownload_ID()>0)
		{
			if(mod.delete(true))
				ret = 1;
			else
				ret = -1;
		}else
			ret = 200;
		
		return ret;
	}
	
	@Override
	@Cacheable
	public OrderDownloadList getOrderDownloadsByOrderIDPoRef(int c_order_id, String poreference, String fileType) {
		
		OrderDownloadList retX = new OrderDownloadList();
		retX.ORDER_ID = ""+c_order_id;
		retX.POREFERENCE = poreference==null?"":poreference;
		if(c_order_id<=0 && (poreference==null || poreference.length()==0)) {
			retX.ORDER_ID = "-1";
			return retX;
		}
		
		String ftype = null;
		if(fileType!=null && fileType.length()>0)
		{
			if(fileType.equals("private_file"))
				ftype = "'2','3'";
			else if(fileType.equals("public_file"))
				ftype = "'1','3'";
			else if(fileType.equals("all"))
				ftype = "'1','2','3'";
			else
			{
				retX.ORDER_ID = ""+c_order_id;
				return retX;
			}
		}

		CopyOnWriteArrayList<OrderDownload> fileList = new CopyOnWriteArrayList<>();
		String sql = "select od.C_ORDERDOWNLOAD_ID, o.POREFERENCE, o.DOCUMENTNO,xx.XX_ISPP,o.ISSOTRX, o.ISDEVIS  " + 
				" from c_orderdownload od " + 
				" inner join c_order o on o.C_ORDER_ID = od.C_ORDER_ID and o.ISSOTRX = 'Y' "
				+ "left join XX_PARAMFILETYPE xx on xx.Z_FILETYPE = od.Z_FILETYPE "+
				" WHERE o.docstatus != 'VO' and " + 
				"  o.ISACTIVE = 'Y' and od.ISACTIVE = 'Y' " ;
		if(c_order_id>0)
			sql = sql+" AND o.C_Order_ID = ? ";
		if(poreference!=null && poreference.length()>0)
			sql = sql+" AND o.POREFERENCE = UPPER(?) ";
		if(ftype!=null && ftype.length()>0)
			sql = sql+" AND xx.XX_ISPP in ("+ftype+")";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int i=1;
			pstmt = DB.prepareStatement(sql,get_Trx());
			if(c_order_id>0)
				pstmt.setInt(i++, c_order_id);
			if(poreference!=null)
				pstmt.setString(i++, poreference);
			rs = pstmt.executeQuery();
			while (rs.next ())
			{
				MOrderDownload mod = new MOrderDownload(getCtx(), rs.getInt(1), get_Trx());
				OrderDownload ret = new OrderDownload();
				ret.NAME = mod.getName();
				ret.ORDER_ID = ""+mod.getC_Order_ID();
				ret.ORDERDOWNLOAD_ID = ""+mod.getC_OrderDownload_ID();
				ret.ORDERNO = rs.getString(3);
				ret.POREF = rs.getString(2);
				ret.Z_FILETYPE = mod.getZ_FileType();
				ret.FROMEXTSOURCE = mod.get_ValueAsString("Z_FromExtSource");
				if(mod.get_ValueAsTimestamp("DateCreated")!=null) {
					Timestamp ti = mod.get_ValueAsTimestamp("DateCreated");
					String DateCreated = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(ti);
					ret.DATECREATED = DateCreated;
				}
				ret.DOWNLOADURL = mod.getDownloadURL();
				ret.DESCRIPTION = mod.getDescription();
				ret.isSoTrx = rs.getString("ISSOTRX");
				ret.isDevis = rs.getString("ISDEVIS");
				ret.public_prive=rs.getString("XX_ISPP");
				fileList.add(ret);
			}
		}
		catch (SQLException ex) {
			retX.ORDER_ID = ""+-1;
			ex.printStackTrace();
			return retX;
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		retX.OrderDownload_set=new HashSet<>(fileList);
		return retX;
	}
}
