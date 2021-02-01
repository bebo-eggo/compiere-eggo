package org.compiere.gwt.server.window;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.TableComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MLookupInfo;
import org.compiere.model.MOrder;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.NamePair;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.ResponseVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

import com.audaxis.compiere.model.X_Z_PosWfAction;
import com.audaxis.compiere.model.proxy.MRequisitionLineProxy;


public class CreateRequisitionWindowImpl extends WindowImpl implements ASyncProcess {


	@Override
	public void validateResponse(ResponseVO responseVO) {
		// TODO Auto-generated method stub
		super.validateResponse(responseVO);
	}

	@Override
	public void lockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	@Override
	public void unlockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean isUILocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void executeASync(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}
	private static CLogger log = CLogger.getCLogger( CreateRequisitionWindowImpl.class );
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	private final FieldVO f_Gamme;
	private final FieldVO f_Famille;
	private final FieldVO f_S_Famille;
	private final FieldVO f_S_S_Famille;
	private final FieldVO f_S_S_S_Famille;
	private final FieldVO f_BPartner;
	private final FieldVO f_Marque;
	private final FieldVO f_MProduct;
	//private final FieldVO f_Tri;
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;

	//private String			m_docAction = MRequisition.DOCACTION_Prepare;


	public CreateRequisitionWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		this.serverCtx.setContext("IsSOTrx", "N");
		//		f_Org = new FieldVO( "AD_Org_ID", Msg.translate( serverCtx, "AD_Org_ID" ), DisplayTypeConstants.TableDir );
		//		MLookup wareOrg = MLookupFactory.get( serverCtx, windowNO, 356, DisplayTypeConstants.TableDir );
		//		f_Org.listBoxVO = Util.convertLookupToVO( wareOrg,true, "" );
		//		f_Org.listBoxVO.setDefaultKey(serverCtx.getContext( "#AD_Org_ID" ));
		// TODO Auto-generated constructor stub
		//FieldVO FieldRefresh = new FieldVO( "Refresh","Rafraîchir le tableau", DisplayTypeConstants.Button);
		//FieldRefresh.isImpactsValue = true;
		//FieldRefresh.WindowNo = windowNO;
		//Gamme
		f_Gamme = new FieldVO("Z_Gamme_ID", "Gamme", DisplayTypeConstants.TableDir);
		MLookup lookupGamme = MLookupFactory.get( serverCtx, 0, 1006487, DisplayTypeConstants.TableDir );
		f_Gamme.listBoxVO = Util.convertLookupToVO( lookupGamme, false, "" );

		//Famille
		f_Famille = new FieldVO("M_Product_Category_ID", "Famille", DisplayTypeConstants.TableDir);
		MLookup lookupFamille = MLookupFactory.get( serverCtx,windowNO, 2012, DisplayTypeConstants.TableDir );
		f_Famille.listBoxVO = Util.convertLookupToVO( lookupFamille, false, "" );
		f_Famille.isImpactsValue = true;

		//S Famille
		f_S_Famille = new FieldVO("Z_S_Famille_ID", "S. Famille", DisplayTypeConstants.TableDir);
		f_S_Famille.listBoxVO =  Util.convertLookupToVO( getlookup(1006484,"Z_S_Famille_ID","M_Product_Category_ID"), false, "" );
		f_S_Famille.isImpactsValue = true;

		//SS Famille
		f_S_S_Famille = new FieldVO("Z_S_S_Famille_ID", "S.S. Famille", DisplayTypeConstants.TableDir);
		f_S_S_Famille.listBoxVO =Util.convertLookupToVO(getlookup(1006485,"Z_S_S_Famille_ID","Z_S_Famille_ID"), false, "" );
		f_S_S_Famille.isImpactsValue = true;

		//SSS Famille
		f_S_S_S_Famille = new FieldVO("Z_S_S_S_Famille_ID", "S.S.S. Famille", DisplayTypeConstants.TableDir);
		f_S_S_S_Famille.listBoxVO = Util.convertLookupToVO(getlookup(1006486,"Z_S_S_S_Famille_ID","Z_S_S_Famille_ID"), false, "" );
		f_S_S_S_Famille.isImpactsValue = true;

		//Fourn
		f_BPartner = new FieldVO( "C_BPartner_ID", Msg.translate( serverCtx, "C_BPartner_ID" ), DisplayTypeConstants.Search );
		MLookup wareHouseL = MLookupFactory.get( serverCtx, windowNO, 2705, DisplayTypeConstants.Search );
		f_BPartner.listBoxVO = Util.convertLookupToVO( wareHouseL,false, "" );
		//f_BPartner.listBoxVO.setDefaultKey(serverCtx.getContext( "#AD_Org_ID" ));

		//Marque
		f_Marque = new FieldVO("Marque_ID", "Marque", DisplayTypeConstants.TableDir);
		MLookup lookupMarque = MLookupFactory.get( serverCtx, 0, 1005565, DisplayTypeConstants.TableDir );
		f_Marque.listBoxVO = Util.convertLookupToVO( lookupMarque, false, "" );

		//f_Tri = new FieldVO("Tri", "Tri", DisplayTypeConstants.List);
		//MLookup lookupTri = MLookupFactory.get( serverCtx, 0, 1033536, DisplayTypeConstants.List );
		//f_Tri.listBoxVO = Util.convertLookupToVO( lookupTri, false, "" );

		//Product
		f_MProduct = new FieldVO( "M_Product_ID", Msg.translate( serverCtx, "M_Product_ID" ), DisplayTypeConstants.Search );
		MLookup lookupProduct = MLookupFactory.get( serverCtx, windowNO, 2527, DisplayTypeConstants.Search );
		f_MProduct.listBoxVO = Util.convertLookupToVO( lookupProduct,false, "" );
		//f_BPartner.listBoxVO.setDefaultKey(serverCtx.getContext( "#AD_Org_ID" ));
		FieldVO QtyToOrdered = new FieldVO("QtyToOrdered", "Qté à commander", "v.QTYTOORDERED", DisplayTypeConstants.Integer, false);
		QtyToOrdered.DisplayLength = 20;
		//Add
		components.add( new SearchComponentImpl( new FieldVO[] { f_Gamme,f_Famille,f_S_Famille,f_S_S_Famille,f_S_S_S_Famille,f_BPartner,f_Marque,f_MProduct,/*,FieldRefresh*/} ) );

		//Tableau
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("M_Product_ID", Msg.translate(serverCtx, "M_Product_ID"), "v.M_Product_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("Value", "Article", "v.PRODUCTVALUE", DisplayTypeConstants.String, true),
				new FieldVO("Description", "Description", "v.Description", DisplayTypeConstants.String, true),
				new FieldVO("Prix", "Prix", "v.PRICESTD", DisplayTypeConstants.Number, true),
				QtyToOrdered,
				new FieldVO("QTYENDEMANDE","Qté en demande","v.QTYENDEMANDE", DisplayTypeConstants.Integer, true),
				new FieldVO("QtyStock", "Qté Stock", "v.QtyStock", DisplayTypeConstants.Integer, true),
				new FieldVO("QTYAVAIL", "Qté Dispo", "v.QTYAVAIL", DisplayTypeConstants.Integer, true),
				new FieldVO("QTYORDERED", "Qté en commande", "v.QTYORDERED", DisplayTypeConstants.Integer, true),
				new FieldVO("QtyTRFT","Qté Trft In", "v.QTYTRFT", DisplayTypeConstants.Integer, true),
		},
		"",
		" ZRV_REQ_TABLE v ", 

		//	WHERE
		" v.AD_Client_ID = ? AND v.AD_org_ID = ? ",
		true, true, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
				ArrayList<Object> params = new ArrayList<Object>(2);
				params.add(ctx.getAD_Client_ID());
				params.add(ctx.getAD_Org_ID());

				boolean crit = false;
				StringBuffer otherClause = new StringBuffer();
				if((windowCtx.get("Z_Gamme_ID") != null) && !"0".equals(windowCtx.get("Z_Gamme_ID"))) {
					otherClause.append(" AND v.Z_Gamme_ID=? ");
					params.add(windowCtx.get("Z_Gamme_ID"));
					crit = true;
				}
				if((windowCtx.get("M_Product_Category_ID") != null) && !"0".equals(windowCtx.get("M_Product_Category_ID"))) {
					otherClause.append(" AND v.M_Product_Category_ID=? ");
					params.add(windowCtx.get("M_Product_Category_ID"));
					crit = true;
				}
				if((windowCtx.get("Z_S_Famille_ID") != null) && !"0".equals(windowCtx.get("Z_S_Famille_ID"))) {
					otherClause.append(" AND v.Z_S_Famille_ID=? ");
					params.add(windowCtx.get("Z_S_Famille_ID"));
					crit = true;
				}
				if((windowCtx.get("Z_S_S_Famille_ID") != null) && !"0".equals(windowCtx.get("Z_S_S_Famille_ID"))) {
					otherClause.append(" AND v.Z_S_S_Famille_ID=? ");
					params.add(windowCtx.get("Z_S_S_Famille_ID"));
					crit = true;
				}
				if((windowCtx.get("Z_S_S_S_Famille_ID") != null) && !"0".equals(windowCtx.get("Z_S_S_S_Famille_ID"))) {
					otherClause.append(" AND v.Z_S_S_S_Famille_ID=? ");
					params.add(windowCtx.get("Z_S_S_S_Famille_ID"));
					crit = true;
				}
				if((windowCtx.get("C_BPartner_ID") != null) && !"0".equals(windowCtx.get("C_BPartner_ID"))) {
					otherClause.append(" AND v.C_BPartner_ID=? ");
					params.add(windowCtx.get("C_BPartner_ID"));
					crit = true;
				}
				if((windowCtx.get("Marque_ID") != null) && !"0".equals(windowCtx.get("Marque_ID"))) {
					otherClause.append("AND v.Y_Marque_ID=? ");
					params.add(windowCtx.get("Marque_ID"));
					crit = true;
				}
				if((windowCtx.get("M_Product_ID") != null) && !"0".equals(windowCtx.get("M_Product_ID"))) {
					otherClause.append(" AND v.M_Product_ID=? ");
					params.add(windowCtx.get("M_Product_ID"));
					crit = true;
				}
				
				if(!crit)
					otherClause.append(" AND 1=2 ");
				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				if(Msg.getMsg("en_US", "KM_PREPA_DA").equals("Y"))
					return "v.PRODUCTVALUE";
				else
					return "";
			}

		});

		FieldVO validate = new FieldVO("ValidateX"," ", DisplayTypeConstants.Text);
		validate.DefaultValue = "Attention, n'oubliez pas de finaliser la demande d'achat !";
		validate.IsReadOnly = true;
		validate.IsFieldOnly = true;

		components.add(new SearchComponentImpl(new FieldVO[]{validate}));
	}

	@Override
	public ChangeVO processCallback(String sender) {
		
		ChangeVO change = new ChangeVO();
		if(sender.equals("SEARCH") && serverCtx.getAD_Org_ID()==0) {
			change.addError("Magasin obligatoire");
			return change;
		}
		
		if(sender.equals(GlobalMessageConstants.SEARCH) ) {
			change.addError("Magasin obligatoire");
			return change;
		}
		
		if(sender.equals("M_Product_Category_ID"))
		{
			change.addChangedDropDown("Z_S_Famille_ID",
					Util.convertLookupToVO(getlookup(1006484,"Z_S_Famille_ID","M_Product_Category_ID"), true, "").getOptions());
		}
		if(sender.equals("Z_S_Famille_ID"))
		{
			change.addChangedDropDown("Z_S_S_Famille_ID",
					Util.convertLookupToVO(getlookup(1006485,"Z_S_S_Famille_ID","Z_S_Famille_ID"), true, "").getOptions());
		}
		if(sender.equals("Z_S_S_Famille_ID"))
		{
			change.addChangedDropDown("Z_S_S_S_Famille_ID",
					Util.convertLookupToVO(getlookup(1006486,"Z_S_S_S_Famille_ID","Z_S_S_Famille_ID"), true, "").getOptions());
		}
		if(sender.equals(GlobalMessageConstants.PROCESS))
			generate(change, serverCtx, windowCtx);
		System.out.println(""+sender);
		return change;
	}

	private void generate (ChangeVO change, Ctx ctx, WindowCtx windowCtx)
	{
		Trx trx = null;
		StringBuffer whereClause = new StringBuffer("M_Product_ID");

		if(ctx.getAD_Org_ID()==0)
		{
			change.addError("Magasin obligatoire ! Magasin sélectionné au login !");
			return;
		}
		
		ArrayList<String[]> selectedValues = null;
		if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
			QueryVO queryVO = windowCtx.getQueryVO(1);
			TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS,false, true, -1);
			selectedValues = new ArrayList<String[]>();
			for( int row = 0; row < model.rows(); ++row ){
				selectedValues.add(model.getRow(row));
			}
		} else {
			selectedValues = windowCtx.getSelectedRows( 1 );
		}
		if(selectedValues.size() == 0 && "N".equals(windowCtx.get("Validate"))) {
			change.addError("Aucune ligne sélectionnée");
			return;
		}
		//		if(selectedValues.size() > 1)
		//			whereClause.append(" IN (");
		//		else
		//			whereClause.append("=");
		//		for (int i = 0; i < selectedValues.size(); i++)
		//		{
		//			if (i > 0)
		//				whereClause.append(",");
		//
		//			whereClause.append(selectedValues.get(i)[0]);
		//			
		//		}
		//
		//		if (selectedValues.size() > 1)
		//			whereClause.append(")");

		//Create Requisition
		
		MRequisition Requisition=CreateRequisition(ctx,ctx.getAD_Org_ID(), trx);
		if(selectedValues.size()>0 )
		{
			//CreateOrUpdateLine
			CreateOrUpdateLine(ctx,selectedValues,Requisition,trx);
		}

		//DocAction Requisition
//		if(Requisition!=null)
//		if("Y".equals(windowCtx.get("Validate")))
//		{
//			Requisition.setDocAction(MRequisition.DOCACTION_Complete);
//			Requisition.save();
//			DocumentEngine.processIt(Requisition,MRequisition.DOCACTION_Complete);
//			Requisition.save();
//			
//			StringBuffer summary = new StringBuffer();
//			
//			if(change.changedFields == null) 
//				change.changedFields = new HashMap<String, String>();
//			change.changedFields.put("isProcess", "Y");
//			change.changedFields.put("summary","Demande d'achat finalisée : "+Requisition.getDocumentNo());
//			change.changedFields.put("logInfo" ,summary.toString());
//		}else
//		{
			change.addError("Demande d'achat créée ou modifiée : "+Requisition.getDocumentNo()+". Attention, demande en brouillon !");
			return;
//		}

	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTION;
	}
	private MLookup getlookup (int ColumnID,String ColumnKey,String ColumnJoin) {
		return MLookupFactory.get(serverCtx, 0,ColumnID,
				DisplayTypeConstants.TableDir, Env.getLanguage(serverCtx),
				ColumnKey, 0, false,
				ColumnJoin+" = " + windowCtx.get(ColumnJoin));
	}

	protected MRequisition CreateRequisition(Ctx ctx,int AD_Org_ID,Trx trx)
	{
		MRequisition requisition=null;
		int requisitionid=DB.getSQLValue(trx, "SELECT MAX(M_Requisition_ID) FROM M_Requisition WHERE DocStatus='DR' AND PriorityRule='9' AND AD_Org_ID=?", AD_Org_ID);
		if(requisitionid==0)
		{
			requisition = new MRequisition(ctx, 0, trx);
			requisition.setAD_Org_ID(AD_Org_ID);
			int pricelist=DB.getSQLValue(trx, "SELECT MAX(M_PriceList_ID) FROM M_PriceList WHERE IsDefault='Y' AND IsSOPriceList='N' and AD_Client_ID = ?", requisition.getAD_Client_ID());
			if(pricelist>0)
				requisition.setM_PriceList_ID(pricelist);
			int warehouseid=DB.getSQLValue(trx, "SELECT M_Warehouse_ID FROM AD_OrgInfo WHERE AD_Org_ID=?",AD_Org_ID);
			requisition.setM_Warehouse_ID(warehouseid);
			requisition.setAD_User_ID(ctx.getAD_User_ID());
			requisition.setPriorityRule("9");
			requisition.setDateRequired(new Timestamp(System.currentTimeMillis()));
			requisition.setDateDoc(new Timestamp(System.currentTimeMillis()));
			int doctypeid=DB.getSQLValue(trx, "SELECT DOCTYPE_Requisition_ID FROM Z_OrgPOS WHERE AD_Org_ID=?",AD_Org_ID);
			requisition.setC_DocType_ID(doctypeid);
			requisition.save();

		}
		else
			requisition= new MRequisition(ctx, requisitionid, trx);
		return requisition;
	}
	protected void CreateOrUpdateLine(Ctx ctx,ArrayList<String[]> selectedValues,MRequisition requisition, Trx trx)
	{
		PreparedStatement ps=null;
		ResultSet rs=null;
		StringBuffer sql= new StringBuffer().append("SELECT M_Product_ID,M_RequisitionLine_ID FROM M_RequisitionLine WHERE M_Requisition_ID=").append(requisition.getM_Requisition_ID());
		Map<Integer, Integer> map= new HashMap<Integer, Integer>() ;
		boolean exist=false;
		try
		{
			ps=DB.prepareStatement(sql.toString(), trx);
			rs=ps.executeQuery();
			while(rs.next())
			{
				map.put(rs.getInt("M_RequisitionLine_ID"),rs.getInt("M_Product_ID"));
			}
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		finally {
			ps=null;rs=null;
		}

		for (int i = 0; i < selectedValues.size(); i++)
		{
			int productid=Integer.parseInt(selectedValues.get(i)[0]);//0:Product
			BigDecimal Qty=new BigDecimal(selectedValues.get(i)[4]);//4:Qty Ordered
			//	if(BigDecimal.ZERO.compareTo(Qty)<1)
			//{	
			Iterator iterator = map.entrySet().iterator();
			while (iterator.hasNext()) {
				Map.Entry entry = (Map.Entry) iterator.next();
				int key = (Integer) entry.getKey();
				int value =  (Integer)entry.getValue();
				if(value==productid)
				{
					exist=true;
					MRequisitionLine line= new MRequisitionLine(ctx,key, trx);
					MRequisitionLineProxy proxy=new MRequisitionLineProxy(line);
					line.setQty(Qty);
					proxy.setQtyEntered(line.getQty());
					line.save();
					break;
				}
				else
					exist=false;

			}
			if(exist==false)
			{
				MRequisitionLine line= new MRequisitionLine(ctx, 0, trx);
				MRequisitionLineProxy proxy=new MRequisitionLineProxy(line);
				line.setAD_Org_ID(ctx.getAD_Org_ID());
				line.setM_Requisition_ID(requisition.getM_Requisition_ID());
				line.setM_Product_ID(productid); 
				line.setQty(Qty);
				proxy.setQtyEntered(line.getQty());
				line.setM_AttributeSetInstance_ID(0);
				//proxy.setSupplier_ID(ctx.getAD_User_ID());
				line.save();
			}
			//}
		}

	}

}
