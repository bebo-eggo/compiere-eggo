package org.compiere.gwt.server.window;


import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.apache.commons.lang.StringUtils;
import org.compiere.common.QueryVO;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.TableComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

public class FormTemplateWindowImpl extends WindowImpl
{
	
	private static CLogger log = CLogger.getCLogger(FormTemplateWindowImpl.class );
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	
	public FormTemplateWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
		
		
		//TODO: TABLE DIRECT FIELD
		FieldVO fieldOrg = new FieldVO("AD_Org_ID", Msg.translate( serverCtx, "AD_Org_ID" ), DisplayTypeConstants.TableDir );
		MLookup lookupOrg = MLookupFactory.get(serverCtx, windowNO, 2163, DisplayTypeConstants.TableDir );
		fieldOrg.listBoxVO = Util.convertLookupToVO( lookupOrg, true, "" );
		fieldOrg.IsMandatoryUI = true;
		
		//TODO: SEARCH DIRECT FIELD
		FieldVO f_BPartner = new FieldVO( "C_BPartner_ID", Msg.translate( serverCtx, "C_BPartner_ID" ), DisplayTypeConstants.Search );
		f_BPartner.listBoxVO = new ListBoxVO();
		f_BPartner.listBoxVO.KeyColumn = "C_BPartner_ID";
		
		//TODO: FIELD WITH A REFERENCE VALIDATOR
		FieldVO f_C_Doctype = new FieldVO( "C_DocType_ID", Msg.translate( serverCtx, "C_DocType_ID" ), DisplayTypeConstants.TableDir );
		MLookup lookupDoc = MLookupFactory.get(serverCtx, windowNO, 1501, DisplayTypeConstants.TableDir, Env.getLanguage(Env.getCtx()),
				"C_DocType_ID", getRefDocType(), false, " IsActive='Y' AND IsSoTrx='Y' AND DocBaseType IN ('ARI', 'API')");
		f_C_Doctype.listBoxVO = Util.convertLookupToVO( lookupDoc, true, "" );
		f_C_Doctype.IsMandatoryUI = true;
		
		//TODO: DATE FIELD
		FieldVO f_DateInvoiced = new FieldVO( "DateInvoiced", Msg.translate( serverCtx, "DateInvoiced" ), DisplayTypeConstants.Date );
		f_DateInvoiced.listBoxVO = new ListBoxVO();
		f_DateInvoiced.listBoxVO.KeyColumn = "DateInvoiced";
		f_DateInvoiced.isRange = true;

		//TODO: FROM TO FIELD
		FieldVO f_DocumentNo = new FieldVO( "DocumentNo", Msg.translate( serverCtx, "DocumentNo" ), DisplayTypeConstants.String );
		f_DocumentNo.listBoxVO = new ListBoxVO();
		f_DocumentNo.listBoxVO.KeyColumn = "DocumentNo";
		//TODO: IMPORTANT TO IMPLEMENT THE FROM-TO FIELDS:  THE SECOND FIELD WILL BE CALLED  "DocumentNo_2"
		f_DocumentNo.isRange = true;
		
		components.add( new SearchComponentImpl( new FieldVO[] { fieldOrg, f_BPartner, f_C_Doctype, f_DateInvoiced,f_DocumentNo,} ) );
		
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("C_Invoice_ID", "", "C_Invoice_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("DocumentNo", Msg.translate(serverCtx, "DocumentNo"), "DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("DateInvoiced", Msg.translate(serverCtx, "DateInvoiced"), "DateInvoiced", DisplayTypeConstants.Date, true),
		},
		"",
		//	TODO: FROM
		" FROM_TABLE ",
		//	TODO: WHERE
		" PARAM1=? AND PARAM2=?", 
		true, null) { //null means doesn't have security sql access
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
				ArrayList<Object> params = new ArrayList<Object>();
				params.add(ctx.getAD_Client_ID());

				StringBuffer otherClause = new StringBuffer();
			
				if(!((windowCtx.get("C_BPartner_ID") == null || "".equals(windowCtx.get("C_BPartner_ID"))))) {
					otherClause.append(" AND C_BPartner_ID=?");
					params.add(windowCtx.get("C_BPartner_ID"));
				}
				
				if(!((windowCtx.get("AD_Org_ID") == null || "".equals(windowCtx.get("AD_Org_ID"))))) {
					otherClause.append(" AND AD_Org_ID=?");
					params.add(windowCtx.get("AD_Org_ID"));
				}
				
				if(!((windowCtx.get("C_DocType_ID") == null || "".equals(windowCtx.get("C_DocType_ID"))))) {
					otherClause.append(" AND C_DocType_ID=?");
					params.add(windowCtx.get("C_DocType_ID"));
				}
				
				if(!StringUtils.isEmpty(windowCtx.get("DateInvoiced")) && !StringUtils.isEmpty(windowCtx.get("DateInvoiced_2"))) {
					otherClause.append(" AND TRUNC(DateInvoiced) BETWEEN TRUNC(?) AND TRUNC(?)");
					
					Timestamp dateFrom = null;
					try { dateFrom = new Timestamp(Long.valueOf(windowCtx.get("DateInvoiced"))); } catch( Exception e ) {}

					Timestamp dateTo = null;
					try { dateTo = new Timestamp(Long.valueOf(windowCtx.get( "DateInvoiced_2" ))); } catch( Exception e ) {}

					params.add(dateFrom);
					params.add(dateTo);
				}
				
				if(!StringUtils.isEmpty(windowCtx.get("DocumentNo")) && !StringUtils.isEmpty(windowCtx.get("DocumentNo_2"))) {
					otherClause.append(" AND DocumentNo BETWEEN ? AND ?");
					
					String DocumentNoFrom = null;
					DocumentNoFrom = new String(windowCtx.get("DocumentNo"));

					String DocumentNoTo = null;
					DocumentNoTo = new String(windowCtx.get( "DocumentNo_2" ));

					params.add(DocumentNoFrom);
					params.add(DocumentNoTo);
				}

				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);
				
				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY Created DESC";
			}
		});
		
		//Process Button
		components.add(new SearchComponentImpl(new FieldVO[]{}));
		
				
		
	}//constructor

	@Override
	public ChangeVO processCallback(String sender) {
		ChangeVO change = new ChangeVO();
		log.log(Level.SEVERE, "sender " + sender + "");
		if(sender.equals(GlobalMessageConstants.PROCESS)){
			
			
			//TODO: CORE METHOD MUST BE HERE
			coreMethoImplementation(change, serverCtx, windowCtx);
			
			change.showResults(true);
			change.updateWindowVO = true;
		}
		
		return change;
	}

	
	/**************************************************************************
	 *	Generate Invoices
	 */
	private void coreMethoImplementation (ChangeVO change, Ctx ctx, WindowCtx windowCtx)
	{
		int org_ID = windowCtx.getAsInt("AD_Org_ID");
		String result = "";
		
		//TODO: MANDATORY FIELDS CHECK
		if (org_ID > 0){
			//Compute the execution date with creation date set to TODAY
			ArrayList<String[]> invoicesSelected = windowCtx.getSelectedRows( 1 );
			if(invoicesSelected.size() == 0) {
				//TODO: IF ERROR, USE THIS TO DISPLAY MESSAGE
				change.addError("No rows selected");
				return;
			}
		}else{
			change.addError("Select an Organisation");
			result = "";
		}
		
		//TODO: IF SUCCESS, USE THIS TO DISPLAY MESSAGE
		change.addSuccess("SUCCESS MESSAGE HERE!!!!");
		
		log.log(Level.INFO, result);
		
	}
	
	private int getRefDocType(){
		int ref_ID=DB.getSQLValue(null, "select ad_reference_id from ad_reference where name='C_DocType'");
		return ref_ID;
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	//TODO: THIS IS NECESSART WITH ALL THE FORMS
	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTIONAUTO;
	}
}
