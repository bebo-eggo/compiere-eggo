package com.audaxis.erp.service;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.logging.Level;

import org.apache.commons.lang3.math.NumberUtils;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MLocator;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.MUser;
import org.compiere.model.MWarehouse;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.model.X_XX_OrderLineDetails;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.MovementLines;
import com.audaxis.erp.json.Order;
import com.audaxis.erp.json.OrderLineDatas;
import com.audaxis.erp.json.OrderLines;
import com.audaxis.erp.json.OrderLinesDetails;
import com.audaxis.erp.json.SetOrderDownloadResult;
import com.audaxis.erp.json.SetOrderResult;

import Util.ProductTypeOA;
import Util.WSUtil;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class SetOrderService  extends CompiereSessionFullService implements ISetOrderService {

	@Autowired
	protected ISessionService sessionService;
	
	private CopyOnWriteArrayList<ProductTypeOA> productINList;
	private int client_ID = 0;
	
	private MOrg org = null;
	private MWarehouse mw = null;
	private MDocType md = null;
	private MBPartner mb;
	private MOrder mo;
	private MOrderLine[] mols =null;
	private MLocator [] mls = null;
	private MUser sales = null;
	
	
	
	
	@Override
	public SetOrderResult setOrder(Order order) {
		SetOrderResult ret = new SetOrderResult();
		ret.error = SetOrderResult.E000;
		productINList = new CopyOnWriteArrayList<ProductTypeOA>();
		client_ID = getCtx().getAD_Client_ID();
		try{
			if(client_ID == 0)
			{
				ret.error = SetOrderResult.E002;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E002);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E002), "", ret.errordesc));
				return ret;
			}
			
			if(!order.DOCACTION.equals("CO") && !order.DOCACTION.equals("DR") && !order.DOCACTION.equals("VO"))
			{
				ret.error = SetOrderResult.E050;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E050);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E050), "", ret.errordesc));
				return ret;
			}
			if(order.MAG != null && order.MAG.length()>0){
				org = WSUtil.getOrgByValue(getCtx(),client_ID,order.MAG);
				if(org == null)
				{
					ret.error = SetOrderResult.E040;
					ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E040);
					ret.orders = "";
					log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E040), "", ret.errordesc));
					return ret;
				}
			}else
			{
				ret.error = SetOrderResult.E040;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E040);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E040), "", ret.errordesc));
				return ret;
			}
			if(order.ENTREPOT != null && order.ENTREPOT.length()>0){
				mw = WSUtil.getWarehouseByValue(getCtx(), org.getAD_Org_ID(), order.ENTREPOT);
				if(mw == null)
				{
					ret.error = SetOrderResult.E041;
					ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E041);
					ret.orders = "";
					log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E041), "", ret.errordesc));
					return ret;
				}else
					mls = WSUtil.getWithWhereClause(getCtx(), mw.getM_Warehouse_ID(),null);
			}else
			{
				ret.error = SetOrderResult.E041;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E041);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E041), "", ret.errordesc));
				return ret;
			}
			
			if(order.TYPEDOC != null && order.TYPEDOC.length()>0){
				md = WSUtil.getDocTypeByName(getCtx(), client_ID, order.TYPEDOC);
				if(md == null)
				{
					ret.error = SetOrderResult.E020;
					ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E020);
					ret.orders = "";
					log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E020), "", ret.errordesc));
					return ret;
				}
				
			}else
			{
				ret.error = SetOrderResult.E020;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E020);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E020), "", ret.errordesc));
				return ret;
			}
			
			if(order.BPARTNER != null && order.BPARTNER.length()>0){
				mb = MBPartner.get(getCtx(), order.BPARTNER);
				if(mb == null)
				{
					ret.error = SetOrderResult.E030;
					ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E030);
					ret.orders = "";
					log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E030), "", ret.errordesc));
					return ret;
				}
			}else
			{
				ret.error = SetOrderResult.E030;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E030);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E030), "", ret.errordesc));
				return ret;
			}
			
			if(order.SALESREP != null && order.SALESREP.length()>0){
				sales = WSUtil.getUserByName(getCtx(), client_ID, order.SALESREP);
				if(sales == null)
				{
					ret.error = SetOrderResult.E031;
					ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E031);
					ret.orders = "";
					log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E031), "", ret.errordesc));
					return ret;
				}
			}else
			{
				ret.error = SetOrderResult.E031;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E031);
				ret.orders = "";
				log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E031), "", ret.errordesc));
				return ret;
			}
			for( OrderLines orderline : order.orderlines_set){
				if(orderline.PRODUCT!=null && orderline.PRODUCT.length()>0)
				{
					MProduct mp = WSUtil.isProductExist(getCtx(), client_ID, orderline.PRODUCT);
					if(mp == null){
						ret.error = SetOrderResult.E102;
						ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E102)+" : "+orderline.PRODUCT;
						ret.orders = "";
						log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E102), "", ret.errordesc));
						return ret;
					}else{
						productINList.add(ProductTypeOA.getProductTypeOA(getCtx(), mp,orderline, get_Trx()));
					}
				}
			}
			HashMap<Integer, MOrder> mapOrder = new HashMap<>();
			if(productINList.size()>0)
			{
				MOrder mo = null;
				for (int i = 0; i < productINList.size(); i++) {
					ProductTypeOA pt = productINList.get(i);
					if(!mapOrder.containsKey(pt.getZ_TypeOA_ID()))
					{
						//NewOrder
						mo = WSUtil.createPOForVendor(getCtx(), client_ID, org.getAD_Org_ID(), mw.getM_Warehouse_ID(), md.getC_DocType_ID(), mb.getC_BPartner_ID(),
								sales.getAD_User_ID(), pt.getZ_TypeOA_ID(), order.POREF, order.DESCRIPTION, get_Trx());
						mo.setDocAction("CO");
						mo.save();
						
						mapOrder.put(pt.getZ_TypeOA_ID(), mo);
					}
					//NewLine
					
					MOrderLine poLine = new MOrderLine (mo);
					
					poLine.setM_Warehouse_ID(mw.getM_Warehouse_ID());
					poLine.set_Value("IsCocontractant", mb.get_Value("IsCocontractant"));
				
					poLine.setM_Product_ID(pt.getProduct().getM_Product_ID());
					poLine.setM_AttributeSetInstance_ID(0);
					poLine.setC_UOM_ID(pt.getProduct().getC_UOM_ID());
					poLine.setQtyEntered(new BigDecimal(pt.getOl().QTY));
					poLine.setQtyOrdered(new BigDecimal(pt.getOl().QTY));
					poLine.setDescription(pt.getOl().DESCRIPTION);
					poLine.setDatePromised(mo.getDatePromised());
				
					poLine.setPrice();
			
					poLine.setTax();
					poLine.save();
					poLine.updateHeaderTax();
				
				}
				
				if(order.DOCACTION.equals("CO") && mo != null)
				{
					mo.save();
					for(Entry<Integer, MOrder> entry : mapOrder.entrySet()) {
						entry.getValue().setDocAction("CO");
						entry.getValue().save();
						if(!DocumentEngine.processIt(entry.getValue(), MInOut.DOCSTATUS_Completed))
						{
							log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E506), "", ret.errordesc));
						}
						entry.getValue().save();
						ret.error = SetOrderResult.E503;
						ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E503);
						ret.orders = entry.getValue().getDocumentNo();	
						
					}
				}
				ret.error = SetOrderResult.E507;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E507);
				ret.orders = mo!=null?mo.getDocumentNo():"";	
				return ret;
				
			}else{
				ret.error = SetOrderResult.E102;
				ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E102);
				ret.orders = mo!=null?mo.getDocumentNo():"";	
				return ret;
			}
			//
		}catch(Exception ex)
		{
			ret.error = SetOrderResult.E999;
			ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E999)+" : "+ex.toString();
			ret.orders = "";		
			log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E999), "", ret.errordesc));
			ex.printStackTrace();
			return ret;
		}
	}


	@Override
	public int setOAResult(int order_ID, String lvendorsent, String msg) {
		
		int no = 0;
		if(lvendorsent.equals("Y"))
			no = DB.executeUpdate(get_Trx(), "update C_Order set lvendorSent = ?, SentMSG = ?, sentdate = trunc(Sysdate) where C_Order_ID = ? ",
				lvendorsent,msg ,order_ID);
		else
			no = DB.executeUpdate(get_Trx(), "update C_Order set lvendorSent = ?, SentMSG = ? where C_Order_ID = ? ",
					lvendorsent,msg ,order_ID);
		if(no>0)
			return 1;
		else
			return 200;
	}


	@Override
	public long oaFilesSize(int order_ID) {
		// TODO Auto-generated method stub
		String USER_NAME = "ERPDocumentService";
	    String PASSWORD = "ERPD0c";
	    if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
			connect();
		File f = null;
		String SQL = "Select c_order_id, downloadurl from XRV_OrderFiles ";
		if(order_ID>0)
			SQL = SQL+" where  c_order_id = ?"; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		long size_kb = 0;
		try
		{
			pstmt = DB.prepareStatement(SQL.toString(), get_Trx());
			if(order_ID>0)
				pstmt.setInt(1,order_ID );
			rs = pstmt.executeQuery();
			
			int oldOrder_ID = 0;
			
			while (rs.next())
			{ 	
				int Order_ID = rs.getInt(1);
				if(oldOrder_ID!=Order_ID)
				{
					if(oldOrder_ID!=0)
					{
						DB.executeUpdate(get_Trx(), "DELETE FROM xx_order_files_size where C_Order_ID = ? ",oldOrder_ID);
						DB.executeUpdate(get_Trx(), "Insert into xx_order_files_size (C_ORDER_ID,FILES_SIZE) Values (?,?)", oldOrder_ID, ""+size_kb);
					}
					oldOrder_ID = Order_ID;
					size_kb = 0;
				}
				String url = rs.getString(2);
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
			if(oldOrder_ID!=0)
			{
				DB.executeUpdate(get_Trx(), "DELETE FROM xx_order_files_size where C_Order_ID = ? ",oldOrder_ID);
				DB.executeUpdate(get_Trx(), "Insert into xx_order_files_size (C_ORDER_ID,FILES_SIZE) values (?,?)", oldOrder_ID, ""+size_kb);
			}

		}
		catch (Exception e)
		{  
			log.log(Level.SEVERE, SQL.toString(), e);
			throw new DBException(e);

		}
		finally
		{
			Util.closeCursor(pstmt, rs);						
		}
		if(order_ID>0)
			return size_kb;
		else
			return 0;
	}

	public void connect() {
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


	@Override
	public SetOrderResult setExtraDatas(OrderLinesDetails datas) {
		SetOrderResult ret = new SetOrderResult();
		int nb = 0;
		try {
			
			if(!datas.int_code.equals("200"))
			{
				DB.executeUpdate(get_Trx(), "update XT_Update_Cuis_ODV set processed = 'E', statusCode = ? and counter=counter+1 where XT_Update_Cuis_ODV_ID = ? ",datas.int_error_desc, datas.extradata_id);
				ret.error = "E620";
				ret.errordesc = "Erreur int�gration, donn�es non r�cup�rables";
				return ret;
			}
			if(datas.C_Order_ID==null || !NumberUtils.isNumber(datas.C_Order_ID) || Integer.parseInt(datas.C_Order_ID)<=0)
			{
				ret.error = "E601";
				ret.errordesc = "c_order_id Non num�rique ou <=0";
				return ret;
			}
			
			int order_id = Integer.parseInt(datas.C_Order_ID);
			MOrder mo = new MOrder(getCtx(), order_id, null);
			
			if(mo == null || mo.getC_Order_ID()<=0)
			{
				ret.error = "E602";
				ret.errordesc = "Vente non trouv�e";
				return ret;
			}
			
			if(datas.C_OrderLine_ID==null || !NumberUtils.isNumber(datas.C_OrderLine_ID) || Integer.parseInt(datas.C_OrderLine_ID)<=0)
			{
				ret.error = "E603";
				ret.errordesc = "c_orderline_id Non num�rique  ou <=0";
				return ret;
			}
			
			int orderline_id = Integer.parseInt(datas.C_OrderLine_ID);
			MOrderLine mol = new MOrderLine(getCtx(), orderline_id, null);
			
			if(mol == null || mol.getC_OrderLine_ID()<=0)
			{
				ret.error = "E604";
				ret.errordesc = "Ligne de vente non trouv�e";
				return ret;
			}
			
			if(datas.OrderLineDatas_set == null || datas.OrderLineDatas_set.size()==0)
			{
				ret.error = "E605";
				ret.errordesc = "Aucune ligne de d�tails � cr�er";
				return ret;
			}
			else {
				//delete previous details
				DB.executeUpdate(get_Trx(), "delete from XX_ORDERLINEDETAILS where C_OrderLine_ID = ? ", orderline_id);
			}
			
			for( OrderLineDatas data : datas.OrderLineDatas_set){
				X_XX_OrderLineDetails xxo = new X_XX_OrderLineDetails(getCtx(), 0, get_Trx());
				xxo.setC_Order_ID(Integer.parseInt(datas.C_Order_ID));
				xxo.setC_OrderLine_ID(orderline_id);
				xxo.setST_LigneDocument(data.lignedocument);
				xxo.setST_Reference(data.reference);
				xxo.setST_Designation(data.designation);
				xxo.setST_Classe(data.classe);
				xxo.setST_FamilleCommerciale(data.famillecommerciale);
				xxo.setST_SFamilleCommerciale(data.sfamillecommerciale);
				xxo.setST_Long(data.st_long);
				xxo.setST_Larg(data.larg);
				xxo.setST_Ep(data.ep);
				xxo.setST_PrixUni(data.prixuni);
				xxo.setST_PrixUniTTC(data.prixunittc);
				xxo.setST_Volume(data.volume);
				xxo.setST_Poids(data.poids);
				xxo.setST_TotalHT(data.totalht);
				xxo.setST_BaseTva(data.basetva);
				xxo.setST_Ttva(data.ttva);
				xxo.setST_Mtva(data.mtva);
				xxo.setST_Commentaire(data.commentaire);
				xxo.setST_PrixRevient(data.prixrevient);
				xxo.setST_Profit(data.profit);
				xxo.setST_LigneParent(data.ligneparent);
				xxo.setST_DisplayedLineNumber(data.displayedlinenumber);
				xxo.save();
				nb++;
			}
		}
		catch(Exception ex)
		{
			ret.error = SetOrderResult.E999;
			ret.errordesc = SetOrderResult.getErrorMsg(SetOrderResult.E999)+" : "+ex.toString();
			log.info(String.format(SetOrderResult.getErrorMsg(SetOrderResult.E999), "", ret.errordesc));
			if(datas.extradata_id!=null && NumberUtils.isNumber(datas.extradata_id))
			{
				DB.executeUpdate(get_Trx(), "update XT_Update_Cuis_ODV set processed = 'N', counter=counter+1 where XT_Update_Cuis_ODV_ID = ? ", NumberUtils.toInt(datas.extradata_id));
			}
			ex.printStackTrace();
			return ret;
		}
		
		//Faire un update dans la table de demande d'event.
		if(datas.extradata_id!=null && NumberUtils.isNumber(datas.extradata_id))
		{
			DB.executeUpdate(get_Trx(), "update XT_Update_Cuis_ODV set processed = 'Y', counter=counter+1 where XT_Update_Cuis_ODV_ID = ? ", NumberUtils.toInt(datas.extradata_id));
		}
		ret.error = "E200";
		ret.errordesc = "Lignes de d�tails cr��e : "+nb;
		
		return ret;
	}
}
