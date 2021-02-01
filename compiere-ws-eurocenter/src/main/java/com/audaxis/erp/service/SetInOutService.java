package com.audaxis.erp.service;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Language;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;
import org.compiere.common.CompiereStateException;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MLocator;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.MWarehouse;
import org.compiere.process.DocumentEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.InOut;
import com.audaxis.erp.json.InOutLines;
import com.audaxis.erp.json.SetInOutResult;
import com.ecenter.compiere.model.MInOutWS;

import Util.DeliveredOrderLine;
import Util.WSUtil;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class SetInOutService extends CompiereSessionFullService implements ISetInOutService {

	@Autowired
	protected ISessionService sessionService;
	
	private int client_ID = 0;
	
	private MOrg org = null;
	private MWarehouse mw = null;
	private MDocType md = null;
	private MBPartner mb;
	private MOrder mo;
	private MOrderLine[] mols =null;
	private MLocator [] mls = null;
	private CopyOnWriteArrayList<MProduct> productINList;
	
	private HashMap<Integer,DeliveredOrderLine> OrderLines;
	
	private MInvoice 	m_invoice = null;
	
	private MInOut 	m_ship = null;
	
	private CopyOnWriteArrayList<MInOutLine> inoutLines;
	
	private MBPartner m_bp = null;
	
	private int			m_line = 0;

	@Override
	public SetInOutResult setInOut(InOut inout) {
		SetInOutResult ret = new SetInOutResult();
		ret.error = SetInOutResult.E000;
		productINList = new CopyOnWriteArrayList<MProduct>();
		inoutLines = new CopyOnWriteArrayList<MInOutLine>();
		OrderLines = new HashMap<Integer,DeliveredOrderLine>();
		try{
		//validate IDsession
		//ret = validateSession(inout);
		client_ID = getCtx().getAD_Client_ID();
		if(client_ID == 0)
		{
			ret.error = SetInOutResult.E002;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E002);
			ret.m_InOut_ID = 0;
			log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E002), "", ret.errordesc));
			return ret;
		}
		
		if(!inout.DOCACTION.equals("CO") && !inout.DOCACTION.equals("DR") && !inout.DOCACTION.equals("VO"))
		{
			ret.error = SetInOutResult.E050;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E050);
			ret.m_InOut_ID = 0;
			log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E050), "", ret.errordesc));
			return ret;
		}
		
		if(inout.ISSOTRX == null || inout.ISSOTRX.length() != 1 || (!inout.ISSOTRX.equals("N") && !inout.ISSOTRX.equals("Y"))){
			ret.error = SetInOutResult.E003;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E003);
			ret.m_InOut_ID = 0;
			log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E003), "", ret.errordesc));
			return ret;
		}
		
		if(inout.MAG != null && inout.MAG.length()>0){
			org = WSUtil.getOrgByValue(getCtx(),client_ID,inout.MAG);
			if(org == null)
			{
				ret.error = SetInOutResult.E040;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E040);
				ret.m_InOut_ID = 0;
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E040), "", ret.errordesc));
				return ret;
			}
		}
		if(inout.ENTREPOT != null && inout.ENTREPOT.length()>0){
			mw = WSUtil.getWarehouseByValue(getCtx(), org.getAD_Org_ID(), inout.ENTREPOT);
			if(mw == null)
			{
				ret.error = SetInOutResult.E041;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E041);
				ret.m_InOut_ID = 0;
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E041), "", ret.errordesc));
				return ret;
			}else
				mls = WSUtil.getWithWhereClause(getCtx(), mw.getM_Warehouse_ID(),null);
		}
		
		if(inout.TYPEDOC != null && inout.TYPEDOC.length()>0){
			md = WSUtil.getDocTypeByName(getCtx(), client_ID, inout.TYPEDOC);
			if(md == null)
			{
				ret.error = SetInOutResult.E020;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E020);
				ret.m_InOut_ID = 0;
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E020), "", ret.errordesc));
				return ret;
			}
		}
		
		if(inout.BPARTNER != null && inout.BPARTNER.length()>0){
			mb = MBPartner.get(getCtx(), inout.BPARTNER);
			if(mb == null)
			{
				ret.error = SetInOutResult.E030;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E030);
				ret.m_InOut_ID = 0;
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E030), "", ret.errordesc));
				return ret;
			}
		}
		if(inout.ORDERNO != null && inout.ORDERNO.length()>0)
		{
			mo =  WSUtil.getOrderByDocNo(getCtx(), inout.ORDERNO,inout.ISSOTRX, get_Trx());
			if(mo==null)
			{
				ret.error = SetInOutResult.E011;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E011);
				ret.m_InOut_ID = 0;
				ret.documentNo = "";
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E011), "", ret.errordesc));
				return ret;
			}
			if((!mo.isSOTrx() && inout.ISSOTRX.equals("Y")) || (mo.isSOTrx() && inout.ISSOTRX.equals("N")))
			{
				ret.error = SetInOutResult.E004;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E004);
				ret.m_InOut_ID = 0;
				ret.documentNo = "";
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E004), "", ret.errordesc));
				return ret;
			}
			mols = mo.getLines();
		}
		
		//CONTROLE LIGNE 
		for( InOutLines ioutline : inout.inoutlines_set){
			if(ioutline.PRODUCT!=null && ioutline.PRODUCT.length()>0)
			{
				MProduct mp = WSUtil.isProductExist(getCtx(), client_ID, ioutline.PRODUCT);
				if(mp == null){
					ret.error = SetInOutResult.E102;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E102)+" : "+ioutline.PRODUCT;
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E102), "", ret.errordesc));
					return ret;
				}else
					productINList.add(mp);
			}
		}
		
		if(inout.inoutlines_set.size()>0 && mo != null  && mols.length>0)
		{
			for( InOutLines ioutline : inout.inoutlines_set){
					if(ioutline.ORDERLINE==null || ioutline.ORDERLINE.length()==0)
						continue;
					boolean exist = false;
					
					String line = null;
					for (int i = 0; i < mols.length; i++) {
					if(ioutline.ORDERLINE!=null && ioutline.ORDERLINE.length()>0)
					{
						exist = ioutline.ORDERLINE.equals(""+mols[i].getLine());
						if(!exist)
							continue;
						line = ioutline.ORDERLINE;
						if(exist && !mols[i].isActive())
						{
							ret.error = SetInOutResult.E509;
							ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E509)+""+mols[i].getLine();
							ret.m_InOut_ID = 0;
							ret.documentNo = "";
							log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E509), "", ret.errordesc));
							return ret;
						}
						if(exist  && (ioutline.ISREPLACE!=null && ioutline.ISREPLACE.equals("Y")) && inout.ISSOTRX.equals("N"))
						{
							//Verif ligne active
							
							//V�rif Article
							MProduct mp = WSUtil.isProductExist(getCtx(), client_ID, ioutline.PRODUCT);
							MProduct mpOl = new MProduct(getCtx(), mols[i].getM_Product_ID(), get_Trx());
							if(!mp.getValue().equals(mpOl.getValue()) || (ioutline.ISREPLACE!=null && ioutline.ISREPLACE.equals("Y")) && inout.ISSOTRX.equals("N"))
							{
								int retx = WSUtil.changePart(getCtx(), mo, Integer.parseInt(ioutline.ORDERLINE), mols[i].getM_Product_ID(), mp.getM_Product_ID(), get_Trx());
								//boolean retx = mo.changePart(Integer.parseInt(ioutline.ORDERLINE), mols[i].getM_Product_ID(), mp.getM_Product_ID());
								if(retx<=0)
								//if(!retx)
								{
									ret.error = SetInOutResult.E105;
									ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E105)+" : "+ioutline.PRODUCT;
									ret.m_InOut_ID = 0;
									ret.documentNo = "";
									log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E105), "", ret.errordesc));
									//return ret;
									inout.DOCACTION = "DR";
								}else{
									ioutline.ORDERLINE = ""+retx;ioutline.ISREPLACE = "N";mols = mo.getLines();i=0;}
							}
						}
						else if(exist)
							break;
					}
					else{
						ret.error = SetInOutResult.E508;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E508);
						ret.m_InOut_ID = 0;
						ret.documentNo = "";
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E508), "", ret.errordesc));
						return ret;
					}
				}
				if(!exist)
				{
					ret.error = SetInOutResult.E101;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E101)+" : "+line;
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E101), "", ret.errordesc));
					return ret;
				}
			}
			mols = mo.getLines();
			for( InOutLines ioutline : inout.inoutlines_set){
					if(ioutline.QTY.equals("0"))
					{
						ret.error = SetInOutResult.E104;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E104);
						ret.m_InOut_ID = 0;
						ret.documentNo = "";
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E104), "", ret.errordesc));
						return ret;
					}
			}
			for( InOutLines ioutline : inout.inoutlines_set){
				boolean exist2 = false;
				String line2 = null;
					if(ioutline.EMPL!=null && ioutline.EMPL.length()>0 && mo==null)
					{
						
						for (int j = 0; j < mls.length; j++) {
							exist2 = ioutline.EMPL.equals(""+mls[j].getValue());
							line2 = ioutline.EMPL;
							if(exist2)
								break;
						}
					}else
						exist2 = true;
					if(!exist2)
					{
						ret.error = SetInOutResult.E103;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E103+" : "+line2);
						ret.m_InOut_ID = 0;
						ret.documentNo = "";
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E103), "", ret.errordesc));
						return ret;
					}
			}
				
		}
		
		if(inout.inoutlines_set.size()>0 && mo == null)
		{
				boolean exist = false;
				String line = null;
				for( InOutLines ioutline : inout.inoutlines_set){
					if(ioutline.QTY.equals("0"))
					{
						ret.error = SetInOutResult.E104;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E104);
						ret.m_InOut_ID = 0;
						ret.documentNo = "";
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E104), "", ret.errordesc));
						return ret;
					}
				}
				for( InOutLines ioutline : inout.inoutlines_set){
					if(ioutline.PRODUCT==null && ioutline.PRODUCT.length()==0 && ioutline.ORDERLINE==null && ioutline.ORDERLINE.length()==0 )
					{
						ret.error = SetInOutResult.E102;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E102);
						ret.m_InOut_ID = 0;
						ret.documentNo = "";
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E102), "", ret.errordesc));
						return ret;
					}
				}
				for( InOutLines ioutline : inout.inoutlines_set){
					boolean exist2 = false;
					String line2 = null;
						if(ioutline.EMPL!=null && ioutline.EMPL.length()>0 && mls.length>0)
						{
							
							for (int j = 0; j < mls.length; j++) {
								exist2 = ioutline.EMPL.equals(""+mls[j].getValue());
								line2 = ioutline.EMPL;
								if(exist2)
									break;
							}
						}
						if(!exist2 && ioutline.EMPL.length()>0)
						{
							ret.error = SetInOutResult.E103;
							ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E103+" : "+line2);
							ret.m_InOut_ID = 0;
							ret.documentNo = "";
							log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E103), "", ret.errordesc));
							return ret;
						}
				}
				
		}
		//Controle InOut
		if(inout.NO_INOUT == null || inout.NO_INOUT.length()==0)
		{
			if((inout.ORDERNO == null || inout.ORDERNO.length()==0 ) && inout.ISSOTRX.equals("Y"))
			{
				ret.error = SetInOutResult.E504;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E504);
				ret.m_InOut_ID = 0;
				ret.documentNo = "";
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E504), "", ret.errordesc));
				return ret;
			}
			if(inout.ORDERNO != null && inout.ORDERNO.length()>0 && inout.ISSOTRX.equals("Y"))
			{
				//Livraison
				if(!mo.isSOTrx() && inout.ISSOTRX.equals("Y"))
				{
					ret.error = SetInOutResult.E004;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E004);
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E004), "", ret.errordesc));
					return ret;
				}
				MInOutWS mi = new MInOutWS(getCtx(), 0, get_Trx());
				mi.setClientOrg(client_ID, mo.getAD_Org_ID());
				mi.setOrder(mo);
				mi.setC_DocType_ID(md.getC_DocType_ID());
				mi.setDocStatus(MInOut.DOCSTATUS_Drafted);
				mi.setDocAction(MInOut.DOCACTION_Complete);
				mi.setMovementDate(WSUtil.parsedate(inout.MOVEMENTDATE));
				//mi.setBPartner(mb);
				mi.setIsSOTrx(inout.ISSOTRX.equals("Y"));
				mi.setMovementType(inout.ISSOTRX.equals("Y")?MInOut.MOVEMENTTYPE_CustomerShipment:MInOut.MOVEMENTTYPE_VendorReceipts);
				mi.setIsReturnTrx(false);
				mi.setDeliveryRule(MInOut.DELIVERYRULE_Force);
				mi.setDescription(inout.DESCRIPTION);
				if(!mi.save())
				{
					ret.error = SetInOutResult.E051;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E051);
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E051), "", ret.errordesc));
					return ret;
				}
				for (int i = 0; i < mols.length; i++) {
					for( InOutLines ioutline : inout.inoutlines_set){
						if(ioutline.ORDERLINE.equals(""+mols[i].getLine()))
						{
							MInOutLine mil = new MInOutLine(mi);
							if(ioutline.EMPL!=null && ioutline.EMPL.length()>0 && mls.length>0){
								for (int j = 0; j < mls.length; j++) {
									if(ioutline.EMPL.equals(""+mls[j].getValue()))
									{
										mil.setM_Locator_ID(mls[j].getM_Locator_ID());
									}
								}
							}
							if(!OrderLines.containsKey(mols[i].getC_OrderLine_ID()))
							{
								DeliveredOrderLine n = new DeliveredOrderLine(mols[i].getC_OrderLine_ID(), new BigDecimal(ioutline.QTY));
								OrderLines.put(mols[i].getC_OrderLine_ID(),n);
							}
							mil.setOrderLine(mols[i], 0, mols[i].getQtyOrdered());
							updateLineQtyToDeliver(mols[i].getC_OrderLine_ID(), new BigDecimal(ioutline.QTY), true);
							mil.setQty(new BigDecimal(ioutline.QTY));
							mil.save();
							inoutLines.add(mil);
						}
					}
				}
				if(inout.DOCACTION.equals("CO"))
				{
					mi.setDocAction("CO");
					mi.save();
					Set<Entry<Integer, DeliveredOrderLine>> setHm = OrderLines.entrySet();
				    Iterator<Entry<Integer, DeliveredOrderLine>> it = setHm.iterator();
				    while(it.hasNext()){
				         Entry<Integer, DeliveredOrderLine> e = it.next();
				         updateLineQtyToDeliver(e.getValue().getOrderLine_ID(), e.getValue().getQty(), false);

				    }
					if(!DocumentEngine.processIt(mi, MInOut.DOCSTATUS_Completed))
					{
						ret.error = SetInOutResult.E506;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E506);
						ret.m_InOut_ID = mi.getM_InOut_ID();
						ret.documentNo = mi.getDocumentNo();			
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E506), "", ret.errordesc));
						return ret;
					}
					mi.save();
					if(inout.GEN_INV.equals("Y") && 1==2){
						for (int i = 0; i < inoutLines.size(); i++) {
							createLine(mo, mi, inoutLines.get(i));
							
						}
						if (m_invoice != null ){
							m_invoice.prepareIt();
							m_invoice.save();
						}
						if (m_invoice != null ) {
							boolean successInv = DocumentEngine.processIt(m_invoice, DocActionConstants.ACTION_Complete);
							if(!successInv){
								ret.error = SetInOutResult.E506;
								ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E506);
								ret.m_InOut_ID = mi.getM_InOut_ID();
								ret.documentNo = mi.getDocumentNo()+", Facture : "+m_invoice;			
								log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E506), "", ret.errordesc));
								return ret;
							}
							m_invoice.save(get_Trx());
						}
					}
					ret.error = SetInOutResult.E503;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E503);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();		
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E503), "", ret.errordesc));
					return ret;
				}
				
			}
			if((inout.ORDERNO == null || inout.ORDERNO.length()==0) && inout.ISSOTRX.equals("N"))
			{
				//R�ception sans OA
				MInOutWS mi = new MInOutWS(getCtx(), 0, get_Trx());
				mi.setClientOrg(client_ID, org.getAD_Org_ID());
				mi.setC_DocType_ID(md.getC_DocType_ID());
				if(inout.ENTREPOT != null && mw!=null)
					mi.setM_Warehouse_ID(mw.getM_Warehouse_ID());
				mi.setDocStatus(MInOut.DOCSTATUS_Drafted);
				mi.setDocAction(MInOut.DOCACTION_Complete);
				mi.setMovementDate(WSUtil.parsedate(inout.MOVEMENTDATE));
				mi.setBPartner(mb);
				mi.setIsSOTrx(inout.ISSOTRX.equals("Y"));
				mi.setMovementType(inout.ISSOTRX.equals("Y")?MInOut.MOVEMENTTYPE_CustomerShipment:MInOut.MOVEMENTTYPE_VendorReceipts);
				mi.setIsReturnTrx(false);
				mi.setDeliveryRule(MInOut.DELIVERYRULE_Force);
				mi.setDescription(inout.DESCRIPTION);
				if(!mi.save())
				{
					ret.error = SetInOutResult.E051;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E051);
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E051), "", ret.errordesc));
					return ret;
				}
				for( InOutLines ioutline : inout.inoutlines_set){
						MInOutLine mil = new MInOutLine(mi);
						mil.setDescription(ioutline.DESCRIPTION);
						mil.setProduct(WSUtil.isProductExist(getCtx(), client_ID, ioutline.PRODUCT));
						if(ioutline.EMPL!=null && ioutline.EMPL.length()>0 && mls.length>0){
							for (int j = 0; j < mls.length; j++) {
								if(ioutline.EMPL.equals(""+mls[j].getValue()))
								{
									mil.setM_Locator_ID(mls[j].getM_Locator_ID());
									mil.setQty(new BigDecimal(ioutline.QTY));
								}else
								{
									mil.setM_Locator_ID(new BigDecimal(ioutline.QTY));
									mil.setQty(new BigDecimal(ioutline.QTY));
								}
							}
						}else{
							mil.setM_Locator_ID(new BigDecimal(ioutline.QTY));
							mil.setQty(new BigDecimal(ioutline.QTY));
						}
						mil.save();
				}
				if(inout.DOCACTION.equals("CO"))
				{
					mi.setDocAction("CO");
					mi.save();
					if(!DocumentEngine.processIt(mi, MInOut.DOCSTATUS_Completed))
					{
						ret.error = SetInOutResult.E506;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E506);
						ret.m_InOut_ID = mi.getM_InOut_ID();
						ret.documentNo = mi.getDocumentNo();			
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E506), "", ret.errordesc));
						return ret;
					}
					mi.save();
					ret.error = SetInOutResult.E503;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E503);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();		
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E503), "", ret.errordesc));
					return ret;
				}

				if(inout.DOCACTION.equals("DR")){
					//CONTINUER LE DOCUMENT
					//Ajout de lignes
					ret.error = SetInOutResult.E507;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E507);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();			
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E507), "", ret.errordesc));
					return ret;
				}
			}
			if(inout.ORDERNO != null && inout.ORDERNO.length()>0 && inout.ISSOTRX.equals("N"))
			{
				//Reception Achat avec OA
				if(mo.isSOTrx() && inout.ISSOTRX.equals("N"))
				{
					ret.error = SetInOutResult.E004;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E004);
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E004), "", ret.errordesc));
					return ret;
				}
				MInOutWS mi = new MInOutWS(getCtx(), 0, get_Trx());
				mi.setClientOrg(client_ID, mo.getAD_Org_ID());
				mi.setOrder(mo);
				mi.setC_DocType_ID(md.getC_DocType_ID());
				if(inout.ENTREPOT != null && mw!=null)
					mi.setM_Warehouse_ID(mw.getM_Warehouse_ID());
				mi.setDocStatus(MInOut.DOCSTATUS_Drafted);
				mi.setDocAction(MInOut.DOCACTION_Complete);
				mi.setMovementDate(WSUtil.parsedate(inout.MOVEMENTDATE));
				mi.setMovementType(inout.ISSOTRX.equals("Y")?MInOut.MOVEMENTTYPE_CustomerShipment:MInOut.MOVEMENTTYPE_VendorReceipts);
				mi.setIsReturnTrx(false);
				mi.setDeliveryRule(MInOut.DELIVERYRULE_Force);
				mi.setDescription(inout.DESCRIPTION);
				if(!mi.save())
				{
					ret.error = SetInOutResult.E051;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E051);
					ret.m_InOut_ID = 0;
					ret.documentNo = "";
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E051), "", ret.errordesc));
					return ret;
				}
				for (int i = 0; i < mols.length; i++) {
					for( InOutLines ioutline : inout.inoutlines_set){
						if(ioutline.ORDERLINE.equals(""+mols[i].getLine()))
						{
							MInOutLine mil = new MInOutLine(mi);
							mil.setOrderLine(mols[i], 0, mols[i].getQtyOrdered());
							if(ioutline.EMPL!=null && ioutline.EMPL.length()>0 && mls.length>0){
								for (int j = 0; j < mls.length; j++) {
									if(ioutline.EMPL.equals(""+mls[j].getValue()))
									{
										mil.setM_Locator_ID(mls[j].getM_Locator_ID());
										mil.setQty(new BigDecimal(ioutline.QTY));
									}
								}
							}else{
								mil.setM_Locator_ID(new BigDecimal(ioutline.QTY));
								mil.setQty(new BigDecimal(ioutline.QTY));
							}
							mil.save();
						}
					}
				}
				if(inout.DOCACTION.equals("CO"))
				{
					mi.setDocAction("CO");
					mi.save();
					if(!DocumentEngine.processIt(mi, MInOut.DOCSTATUS_Completed))
					{
						ret.error = SetInOutResult.E506;
						ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E506);
						ret.m_InOut_ID = mi.getM_InOut_ID();
						ret.documentNo = mi.getDocumentNo();			
						log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E506), "", ret.errordesc));
						return ret;
					}
					mi.save();
					
					ret.error = SetInOutResult.E503;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E503);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();		
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E503), "", ret.errordesc));
					return ret;
				}
				
				if(inout.DOCACTION.equals("DR")){
					//CONTINUER LE DOCUMENT
					//Ajout de lignes
					ret.error = SetInOutResult.E507;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E507);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();			
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E507), "", ret.errordesc));
					return ret;
				}
			}
		}
		else
		{
			//Modif
			//Exists ?
			MInOut mi = WSUtil.getMInOutByDocNo(getCtx(), inout.NO_INOUT, get_Trx());
			if(mi == null)
			{
				ret.error = SetInOutResult.E010;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E010);
				ret.m_InOut_ID = 0;
				ret.documentNo = inout.NO_INOUT;
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E010), "", ret.errordesc));
				return ret;
			}
			
			if(mi!=null && inout.DELETE_LINES.equals("Y") && mi.getDocStatus().equals("DR"))
			{
				WSUtil.deleteLines(get_Trx(), " M_InOutLine ", " M_InOut_ID = ? ", mi.getM_InOut_ID());
			}
			
			if(mi.getDocStatus().equals("DR") && inout.ORDERNO == null || inout.ORDERNO.length() == 0){
				if(inout.inoutlines_set.size()>0)
				{
					//Ajouter les lignes
					for(InOutLines ioutline : inout.inoutlines_set){
						MInOutLine mil = new MInOutLine(mi);
						mil.setDescription(ioutline.DESCRIPTION);
						mil.setProduct(WSUtil.isProductExist(getCtx(), client_ID, ioutline.PRODUCT));
						if(ioutline.EMPL!=null && ioutline.EMPL.length()>0 && mls.length>0){
							for (int j = 0; j < mls.length; j++) {
								if(ioutline.EMPL.equals(""+mls[j].getValue()))
								{
									mil.setM_Locator_ID(mls[j].getM_Locator_ID());
									mil.setQty(new BigDecimal(ioutline.QTY));
								}else
								{
									mil.setM_Locator_ID(new BigDecimal(ioutline.QTY));
									mil.setQty(new BigDecimal(ioutline.QTY));
								}
							}
						}else{
							mil.setM_Locator_ID(new BigDecimal(ioutline.QTY));
							mil.setQty(new BigDecimal(ioutline.QTY));
						}
						mil.save();
				}
				}
			}
			if(mi.getDocStatus().equals("CO") && inout.DOCACTION.equals("VO"))
			{
				//Annulation
				mi.setDocAction("VO");
				mi.save();
				if(!DocumentEngine.processIt(mi, MInOut.DOCACTION_Void))
				{
					ret.error = SetInOutResult.E506;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E506);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();			
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E506), "", ret.errordesc));
					return ret;
				}
				mi.save();
				ret.error = SetInOutResult.E502;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E502);
				ret.m_InOut_ID = mi.getM_InOut_ID();
				ret.documentNo = inout.NO_INOUT;			
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E502), "", ret.errordesc));
				return ret;
			}
			if((mi.getDocStatus().equals("IP") || mi.getDocStatus().equals("IN") || mi.getDocStatus().equals("DR") ) && (inout.DOCACTION.equals("VO") || inout.DOCACTION.equals("CO")))
			{
				mi.setDocAction(inout.DOCACTION);
				mi.save();
				if(!DocumentEngine.processIt(mi, inout.DOCACTION))
				{
					ret.error = SetInOutResult.E501;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E501);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();			
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E501), "", ret.errordesc));
					return ret;
				}
				mi.save();
				if(inout.DOCACTION.equals("VO")){
				ret.error = SetInOutResult.E502;
				ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E502);
				ret.m_InOut_ID = mi.getM_InOut_ID();
				ret.documentNo = mi.getDocumentNo();		
				log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E502), "", ret.errordesc));
				}
				if(inout.DOCACTION.equals("CO")){
					ret.error = SetInOutResult.E503;
					ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E503);
					ret.m_InOut_ID = mi.getM_InOut_ID();
					ret.documentNo = mi.getDocumentNo();		
					log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E503), "", ret.errordesc));
					}
				return ret;
			}
			
		}
		}
		catch(Exception ex)
		{
			ret.error = SetInOutResult.E999;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E999)+" : "+ex.toString();
			ret.m_InOut_ID = 0;
			ret.documentNo = "";		
			log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E999), "", ret.errordesc));
			ex.printStackTrace();
			return ret;
		}
		return ret;
	}

	private SetInOutResult validateSession(InOut inout) {
		SetInOutResult ret = new SetInOutResult();
		ret.error = SetInOutResult.E000;

		if(inout == null || inout.key == null || inout.key.length() == 0){
			ret.error = SetInOutResult.E001;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E001);
			log.info(String.format(SetInOutResult.getErrorMsg(SetInOutResult.E001), "", ret.errordesc));
			return ret;
		}

		PreparedStatement ps = null;
		ResultSet rs = null;
		Timestamp created = null;
		try {
			ps = DB.prepareStatement("SELECT Created, AD_Client_ID FROM AD_Session WHERE AD_SESSION_ID=?", (Trx)null);
			ps.setString(1, inout.key);
			rs = ps.executeQuery();
			if (rs.next()) {
				created = rs.getTimestamp("Created");
				client_ID = rs.getInt("AD_Client_ID");
			}
		} catch (Exception e) {
			ret.error = SetInOutResult.E001;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E001);
			log.info(String.format("Authenticate for Key %s, %s", inout.key, ret.errordesc));
			e.printStackTrace();
			return ret;
		} finally {
			Util.closeCursor(ps, rs);
		}

		//Calculate expired date
		Timestamp now = new Timestamp(System.currentTimeMillis());
		Calendar cal = Calendar.getInstance();
		cal.setTime(now);
		cal.add(Calendar.HOUR_OF_DAY, -12);
		cal.add(Calendar.MINUTE, -30);
		Timestamp expireddate = new Timestamp(cal.getTimeInMillis());
		//

		//key not found or expired
		if (created == null || created.before(expireddate)){
			ret.error = SetInOutResult.E001;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E001);
			log.info(String.format("Authenticate for Key %s, %s", inout.key, ret.errordesc));
		}else{
			ret.error = SetInOutResult.E000;
			ret.errordesc = SetInOutResult.getErrorMsg(SetInOutResult.E000);
			log.info(String.format("Authenticate for Key %s, %s", inout.key, ret.errordesc));
		}

		return ret;

	}

	private void updateLineQtyToDeliver(int orderline_ID, BigDecimal Qty, boolean before)
	{
		if(before)
			DB.executeUpdate(get_Trx(), "UPDATE C_Orderline set QtyToDeliver = ? where C_Orderline_ID = ? ", Qty, orderline_ID);
		else
			DB.executeUpdate(get_Trx(), "UPDATE C_Orderline set QtyToDeliver = 0 where C_Orderline_ID = ? ", orderline_ID);
	}
	
	private void createLine (MOrder order, MInOut ship, MInOutLine sLine)
	{
		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, ship.getDateAcct());
			if (!m_invoice.save())
				throw new CompiereStateException("Could not create Invoice (s)");
		}
		//	Create Shipment Comment Line
		if (m_ship == null 
			|| m_ship.getM_InOut_ID() != ship.getM_InOut_ID())
		{
			MDocType dt = MDocType.get(getCtx(), ship.getC_DocType_ID());
			if (m_bp == null || m_bp.getC_BPartner_ID() != ship.getC_BPartner_ID())
				m_bp = new MBPartner (getCtx(), ship.getC_BPartner_ID(), get_Trx());
			//	Reference: Delivery: 12345 - 12.12.12
			MClient client = MClient.get(getCtx(), order.getAD_Client_ID ());
			String AD_Language = client.getAD_Language();
			if (client.isMultiLingualDocument() && m_bp.getAD_Language() != null)
				AD_Language = m_bp.getAD_Language();
			if (AD_Language == null)
				AD_Language = Language.getBaseAD_Language();
			java.text.SimpleDateFormat format = DisplayType.getDateFormat 
				(DisplayTypeConstants.Date, Language.getLanguage(AD_Language));
			String reference = dt.getPrintName(m_bp.getAD_Language())
				+ ": " + ship.getDocumentNo() 
				+ " - " + format.format(ship.getMovementDate());
			m_ship = ship;
			//
			MInvoiceLine line = new MInvoiceLine (m_invoice);
			line.setIsDescription(true);
			line.setDescription(reference);
			line.setLine(m_line + sLine.getLine() - 2);
			if (!line.save())
				throw new CompiereStateException("Could not create Invoice Comment Line (sh)");
			
			//line.setC_OrderLine_ID(sLine.getC_OrderLine_ID());
			line.setOrderLine(new MOrderLine(getCtx(),sLine.getC_OrderLine_ID(),get_Trx() ));
			//ZCOM447
			if (sLine.getC_OrderLine_ID() != 0)
			{
				MOrderLine ol = new MOrderLine(getCtx(),sLine.getC_OrderLine_ID(),get_Trx());
				line.setUser2_ID(ol.getUser2_ID());
				line.set_ValueNoCheck("ZIsComplement", ol.get_Value("ZIsComplement"));
			}
			else
				line.setUser2_ID(ship.getUser2_ID());
			//ZCOM447	

			//	Optional Ship Address if not Bill Address
			if (order.getBill_Location_ID() != ship.getC_BPartner_Location_ID())
			{
				MLocation addr = MLocation.getBPLocation(getCtx(), ship.getC_BPartner_Location_ID(), null);
				line = new MInvoiceLine (m_invoice);
				line.setIsDescription(true);
				line.setDescription(addr.toString());
				line.setLine(m_line + sLine.getLine() - 1);
				if (!line.save())
					throw new CompiereStateException("Could not create Invoice Comment Line 2 (sh)");
			}
		}
		//	
		MInvoiceLine line = new MInvoiceLine (m_invoice);
		line.setShipLine(sLine);
		line.setQtyEntered(sLine.getQtyEntered());
		line.setQtyInvoiced(sLine.getMovementQty());
		line.setLine(m_line + sLine.getLine());
		line.setM_AttributeSetInstance_ID(sLine.getM_AttributeSetInstance_ID());
		line.updateHeaderTax();

		if (!line.save())
			throw new CompiereStateException("Could not create Invoice Line (s)");
		//	Link
		sLine.setIsInvoiced(true);
		if (!sLine.save())
			throw new CompiereStateException("Could not update Shipment Line");
		
		log.fine(line.toString());
	}	//	createLine
}
