package com.audaxis.erp.service;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.concurrent.CopyOnWriteArrayList;

import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MOrg;
import org.compiere.util.DB;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.model.MTypeEcheance;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.OrderPaySch;
import com.audaxis.erp.json.OrderPaySchList;
import com.audaxis.erp.json.SetOrderDownloadResult;
import com.audaxis.erp.json.SetOrderPaySchResult;

import Util.WSUtil;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class SetOrderPaySchService extends CompiereSessionFullService implements ISetOrderPaySchService {

	private int client_ID = 0;
	
	private MOrg org = null;
	private MOrder mo = null;
	
	private MTypeEcheance mte = null;
	
	private boolean okx= false;
	
	@Override
	public SetOrderPaySchResult setOrderPaySch(OrderPaySch ordPayn) {
		// TODO Auto-generated method stub
		SetOrderPaySchResult ret = new SetOrderPaySchResult();
		ret.error = SetOrderPaySchResult.E000;
		client_ID = getCtx().getAD_Client_ID();
		System.out.println("order id"+ordPayn.ORDER_ID);
		log.info("order id"+ordPayn.ORDER_ID);
		try{
		
		if(client_ID == 0)
		{
			ret.error = SetOrderPaySchResult.E002;
			ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E002);
			ret.z_orderpaymschedule_id = 0;
			log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E002), "", ret.errordesc));
			return ret;
		}
		
		if(ordPayn.ORDER_ID!=null && ordPayn.ORDER_ID.length()>0 && !ordPayn.ORDER_ID.equals("0"))
		{
			int v_order_ID = 0;
			try
		    {
				v_order_ID = Integer.parseInt(ordPayn.ORDER_ID.trim());
				System.out.println("order id"+v_order_ID);
				log.info("order id"+v_order_ID);
				
		    }
		    catch (NumberFormatException nfe)
		    {
		    	ret.error = SetOrderPaySchResult.E011;
		    	ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011)+" : "+nfe.toString();
				ret.z_orderpaymschedule_id = 0;
				log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011), "", ret.errordesc));
				nfe.printStackTrace();
				return ret;
		    }
			
			mo = new MOrder(getCtx(), v_order_ID, get_Trx());
			if(mo==null)
			{
				ret.error = SetOrderPaySchResult.E011;
				ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011);
				ret.z_orderpaymschedule_id = 0;
				log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011), "", ret.errordesc));
				return ret;
			}
		}
		
		if((ordPayn.ORDERNO == null || ordPayn.ORDERNO.length()==0) 
				&& (ordPayn.POREF== null || ordPayn.POREF.length()==0) && (ordPayn.ORDER_ID==null || ordPayn.ORDER_ID.length()==0 || ordPayn.ORDER_ID.equals("0")))
		{
			ret.error = SetOrderPaySchResult.E011;
			ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011);
			ret.z_orderpaymschedule_id = 0;
			log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011), "", ret.errordesc));
			return ret;
		}
		
		if(ordPayn.ORDERNO != null && ordPayn.ORDERNO.length()>0 && mo==null)
		{
			mo =  WSUtil.getOrderByDocNo(getCtx(), ordPayn.ORDERNO,"Y", get_Trx());
			if(mo==null)
			{
				ret.error = SetOrderPaySchResult.E011;
				ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011);
				ret.z_orderpaymschedule_id = 0;
				log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011), "", ret.errordesc));
				return ret;
			}
		}
		
		if(ordPayn.MAG != null && ordPayn.MAG.length()>0 && !ordPayn.MAG.equals("0")){
			org = WSUtil.getOrgByValue(getCtx(),client_ID,ordPayn.MAG);
		}
			if((ordPayn.MAG == null || ordPayn.MAG.length()>0 || org == null) && mo!=null)
			{
				org = new MOrg(getCtx(), mo.getAD_Org_ID(), get_Trx());
			}
			else
			{
				org = WSUtil.getOrgByValue(getCtx(),client_ID,"0");
			}
		
			Timestamp ti = null;
			if(ordPayn.DUEDATE != null || ordPayn.DUEDATE.length()>0)
			{
				try {
					SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
					Date date = null;
					date = simpleDateFormat.parse(ordPayn.DUEDATE);
					long time = date.getTime();
					ti = new Timestamp(time);
				}
				catch (Exception e) {
					// TODO: handle exception
					ret.error = SetOrderPaySchResult.E031;
					ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E031)+" : "+e.toString();
					ret.z_orderpaymschedule_id = 0;	
					log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E031), "", ret.errordesc));
					e.printStackTrace();
					return ret;
				}
				
			}
			else {
				ret.error = SetOrderPaySchResult.E031;
				ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E031);
				ret.z_orderpaymschedule_id = 0;	
				log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E031), "", ret.errordesc));
				return ret;
			}
			
			if(ordPayn.TypeEcheance_ID !=null && ordPayn.TypeEcheance_ID.length()>0 && !ordPayn.TypeEcheance_ID.equals("0"))
			{
				int v_ech_ID = 0;
				try
			    {
					v_ech_ID = Integer.parseInt(ordPayn.TypeEcheance_ID.trim());

			    }
			    catch (NumberFormatException nfe)
			    {
			    	ret.error = SetOrderPaySchResult.E012;
			    	ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E012)+" : "+nfe.toString();
					ret.z_orderpaymschedule_id = 0;
					log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E012), "", ret.errordesc));
					nfe.printStackTrace();
					return ret;
			    }
				mte = new MTypeEcheance(getCtx(), v_ech_ID, get_Trx());
				if(mte==null)
				{
					ret.error = SetOrderPaySchResult.E012;
			    	ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E012);
					ret.z_orderpaymschedule_id = 0;
					log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E012), "", ret.errordesc));
					return ret;
				}
			}
			
			if(ordPayn.TYPEECHEANCE != null && ordPayn.TYPEECHEANCE.length()>0 && mo!=null && mte == null)
			{
				mte =  WSUtil.getTypeEchByValue(getCtx(), client_ID,ordPayn.TYPEECHEANCE);
				if(mo==null)
				{
					ret.error = SetOrderPaySchResult.E011;
					ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011);
					ret.z_orderpaymschedule_id = 0;
					log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E011), "", ret.errordesc));
					return ret;
				}
			}	
		
			BigDecimal tt = null;
			if(ordPayn.TOTALAMT != null && ordPayn.TOTALAMT.length()>0)
			{
				try
			    {
					tt = new BigDecimal(ordPayn.TOTALAMT.trim());

			    }
			    catch (NumberFormatException nfe)
			    {
			    	ret.error = SetOrderPaySchResult.E041;
			    	ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E041)+" : "+nfe.toString();
					ret.z_orderpaymschedule_id = 0;
					log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E041), "", ret.errordesc));
					nfe.printStackTrace();
					return ret;
			    }
			}
			
			
		
		
			MOrderPaymSchedule mos = null;
		if(ordPayn.ODERPAYMENTSCHEDULE_ID != null && ordPayn.ODERPAYMENTSCHEDULE_ID.length()>0)
		{
			//UPDATE
			int v_ech_ID = 0;
			try
		    {
				v_ech_ID = Integer.parseInt(ordPayn.ODERPAYMENTSCHEDULE_ID.trim());

		    }
		    catch (NumberFormatException nfe)
		    {
		    	ret.error = SetOrderPaySchResult.E012;
		    	ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E012)+" : "+nfe.toString();
				ret.z_orderpaymschedule_id = v_ech_ID;
				log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E012), "", ret.errordesc));
				nfe.printStackTrace();
				return ret;
		    }
			mos = new MOrderPaymSchedule(getCtx(), v_ech_ID, get_Trx());
			
			if(mos!=null)
			{
				mos.setAD_Org_ID(org.getAD_Org_ID());
				mos.setC_Order_ID(mo.getC_Order_ID());
				mos.setZ_TypeEcheance_ID(mte.getZ_TypeEcheance_ID());
				mos.setTotalAmt(tt);
				mos.setSeqNo(Integer.parseInt(ordPayn.SEQNO.trim()));
				mos.set_ValueNoCheck("DueDate", ti);
				if(!mos.save())
				{
					ret.error = SetOrderPaySchResult.E051;
					ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E051);
					log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E051), "", ret.errordesc));
					return ret;
				}
				okx = true;
			}
		}
		if(okx) {
			ret.error = SetOrderPaySchResult.E507;
			ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E507);
			ret.z_orderpaymschedule_id = mos.getZ_OrderPaymSchedule_ID();
			//log.info(String.format(SetOrderDownloadResult.getErrorMsg(SetOrderDownloadResult.E507), "", ret.errordesc));
			return ret;
		}
		}
		catch(Exception ex)
		{
			ret.error = SetOrderPaySchResult.E999;
			ret.errordesc = SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E999)+" : "+ex.toString();
			ret.z_orderpaymschedule_id = 0;	
			log.info(String.format(SetOrderPaySchResult.getErrorMsg(SetOrderPaySchResult.E999), "", ret.errordesc));
			ex.printStackTrace();
			return ret;
		}
		
		return ret;
		
		
		
	}

	@Override
	public OrderPaySch getOrderPaySchByID(int orderPaySch_ID) {
		// TODO Auto-generated method stub
		OrderPaySch ret = new OrderPaySch();
		String sql = "Select ops.z_orderpaymschedule_id, co.C_order_ID, co.DocumentNo, co.Poreference, ops.totalamt,ops.duedate,"
				+ "ops.seqno, ops.z_typeecheance_id, zt.value as typeech,org.Value as mag," + 
				"zt.isfinancement, zt.isprom, zt.isajust, ops.ispaid, NVL(ops.z_numaccept,'') as z_numaccept  " + 
				"from z_orderpaymschedule ops " + 
				"inner join z_typeecheance zt on zt.z_typeecheance_id = ops.z_typeecheance_id " + 
				"inner join C_Order co on co.c_order_id = ops.c_order_id " + 
				"inner join AD_org org on org.ad_org_id = co.ad_org_id " +
				"inner join C_DOCTYPEINFO cd on cd.C_DocType_ID = co.C_DocType_ID and cd.IsDevis = 'N' " + 
				"where ops.z_orderpaymschedule_id = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int i=1;
			pstmt = DB.prepareStatement(sql,get_Trx());
			pstmt.setInt(i++, orderPaySch_ID);
			rs = pstmt.executeQuery();
			if (rs.next ())
			{
				ret.ODERPAYMENTSCHEDULE_ID = ""+orderPaySch_ID;
				ret.ORDER_ID = rs.getString("C_order_ID");
				ret.AJUSTEMENT = rs.getString("isajust").equals("Y")?"Y":"N";
				ret.FINANCEMENT = rs.getString("isfinancement").equals("Y")?"Y":"N";
				ret.PROMOTEUR = rs.getString("isprom").equals("Y")?"Y":"N";
				if(rs.getTimestamp("duedate")!=null) {
					Timestamp ti = rs.getTimestamp("duedate");
					String DueDate = new SimpleDateFormat("dd/MM/yyyy").format(ti);
					ret.DUEDATE = DueDate;
				}
				ret.MAG = rs.getString("mag");
				ret.ORDERNO = rs.getString("DocumentNo");
				ret.POREF = rs.getString("Poreference");
				ret.SEQNO = rs.getString("seqno");
				ret.TOTALAMT = rs.getString("totalamt");
				ret.TYPEECHEANCE = rs.getString("typeech");
				ret.TypeEcheance_ID = rs.getString("z_typeecheance_id");
				ret.IsPaid = rs.getString("ispaid");
				ret.Z_NumAccept = rs.getString("z_numaccept")==null ? "":rs.getString("z_numaccept");
			}
			if(ret.ODERPAYMENTSCHEDULE_ID==null || ret.ODERPAYMENTSCHEDULE_ID.length()==0)
			{
				ret.ODERPAYMENTSCHEDULE_ID = ""+-1;
				return ret; 
			}
		}catch (SQLException ex) {
			ret.ODERPAYMENTSCHEDULE_ID = ""+-1;
			ex.printStackTrace();
			return ret;
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return ret;
	}

	@Override
	public int deleteOrderPaySchByID(int orderPaySch_ID) {
		int ret = 0;
		
		MOrderPaymSchedule mod = new MOrderPaymSchedule(getCtx(), orderPaySch_ID, get_Trx());
		if(mod!=null && mod.getZ_OrderPaymSchedule_ID()>0 && mod.getC_Invoice_ID()<=0)
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
	public OrderPaySchList getOrderPaySchsByOrderIDPoRef(int order_id, String Poreference, String typeEch) {
		// TODO Auto-generated method stub
		OrderPaySchList ordPaySchList = new OrderPaySchList();
		CopyOnWriteArrayList<OrderPaySch> fileList = new CopyOnWriteArrayList<>();
		String sql = "Select ops.z_orderpaymschedule_id, co.C_order_ID, co.DocumentNo, co.Poreference, ops.totalamt,ops.duedate,"
				+ "ops.seqno, ops.z_typeecheance_id, zt.value as typeech,org.Value as mag," + 
				"zt.isfinancement, zt.isprom, zt.isajust, ops.ispaid, NVL(ops.z_numaccept,'') as z_numaccept " + 
				"from z_orderpaymschedule ops " + 
				"inner join z_typeecheance zt on zt.z_typeecheance_id = ops.z_typeecheance_id " + 
				"inner join C_Order co on co.c_order_id = ops.c_order_id " + 
				"inner join AD_org org on org.ad_org_id = co.ad_org_id " + 
				"inner join C_DOCTYPEINFO cd on cd.C_DocType_ID = co.C_DocType_ID and cd.IsDevis = 'N' ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			
			int i=1;
			
			if(order_id>0)
			{
				sql = sql +" where ops.C_order_ID = ? ";
				if(typeEch!=null)
				{
					sql = sql +" and zt.value = ? ";
				}
				pstmt = DB.prepareStatement(sql,get_Trx());
				pstmt.setInt(i++, order_id);
			}
			else
				if(Poreference!=null)
				{
					sql = sql +" where co.Poreference = ? ";
					if(typeEch!=null)
					{
						sql = sql +" and zt.value = ? ";
					}
					pstmt = DB.prepareStatement(sql,get_Trx());
					pstmt.setString(i++, Poreference);
				}
			if(typeEch!=null)
			{
				pstmt.setString(i++, typeEch);
			}
			
			sql = sql +" order by co.DocumentNo, ops.seqno";
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				if(order_id>0)
				{
					ordPaySchList.ORDER_ID = rs.getString("C_order_ID");
					ordPaySchList.POREFERENCE = rs.getString("Poreference");
					ordPaySchList.ORDERNO = rs.getString("DocumentNo");
				}
				if(Poreference!=null)
				{
					ordPaySchList.POREFERENCE = rs.getString("Poreference");
				}
				
				OrderPaySch ret = new OrderPaySch();
				ret.ODERPAYMENTSCHEDULE_ID = rs.getString("z_orderpaymschedule_id");
				ret.ORDER_ID = rs.getString("C_order_ID");
				ret.AJUSTEMENT = rs.getString("isajust").equals("Y")?"Y":"N";
				ret.FINANCEMENT = rs.getString("isfinancement").equals("Y")?"Y":"N";
				ret.PROMOTEUR = rs.getString("isprom").equals("Y")?"Y":"N";
				if(rs.getTimestamp("duedate")!=null) {
					Timestamp ti = rs.getTimestamp("duedate");
					String DueDate = new SimpleDateFormat("dd/MM/yyyy").format(ti);
					ret.DUEDATE = DueDate;
				}
				ret.MAG = rs.getString("mag");
				ret.ORDERNO = rs.getString("DocumentNo");
				ret.POREF = rs.getString("Poreference");
				ret.SEQNO = rs.getString("seqno");
				ret.TOTALAMT = rs.getString("totalamt");
				ret.TYPEECHEANCE = rs.getString("typeech");
				ret.TypeEcheance_ID = rs.getString("z_typeecheance_id");
				ret.IsPaid = rs.getString("ispaid");
				ret.Z_NumAccept = rs.getString("z_numaccept")==null ? "":rs.getString("z_numaccept");
				fileList.add(ret);
			}
		}catch (SQLException ex) {
			ordPaySchList.ORDER_ID = ""+-1;
			ex.printStackTrace();
			return ordPaySchList;
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		ordPaySchList.OrderPaymentSchedule_set = new HashSet<>(fileList);
		return ordPaySchList;
	}

}
