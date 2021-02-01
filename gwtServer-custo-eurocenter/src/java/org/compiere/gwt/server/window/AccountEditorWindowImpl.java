package org.compiere.gwt.server.window;

import static org.compiere.common.constants.AccountEditorConstants.*;

import java.sql.*;
import java.util.*;
import java.util.logging.*;

import org.compiere.common.*;
import org.compiere.common.constants.*;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.*;


public class AccountEditorWindowImpl extends WindowImpl {

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger( AccountEditorWindowImpl.class );
	
	
	MAcctSchema m_AcctSchema;


	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();


	protected final Ctx serverCtx;


	protected final WindowCtx windowCtx;


	protected final UWindowID m_uid;


	protected final int windowNO;

	//final SearchComponentImpl c_search;
//	final SearchComponentImpl c_process;
	
	
	
	public AccountEditorWindowImpl( int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		ArrayList< FieldVO > searchFieldVOs = new ArrayList< FieldVO >();
		ArrayList< FieldVO > tableFieldVOs = new ArrayList< FieldVO >();
		
		String fromClause = " C_ValidCombination vc " + 
		" INNER JOIN AD_Org o ON (vc.AD_Org_ID=o.AD_Org_ID) "+
		" INNER JOIN C_ElementValue e ON (vc.Account_ID = e.C_ElementValue_ID) ";
		
		String whereClause = " vc.AD_Org_ID=o.AD_Org_ID " +
		" AND vc.Account_ID = e.C_ElementValue_ID ";
		
		int C_AcctSchema_ID = windowCtx.getAsInt("C_AcctSchema_ID");
		m_AcctSchema = new MAcctSchema (serverCtx, C_AcctSchema_ID, null);

		tableFieldVOs.add(new FieldVO (AccountEditorConstants.COMBINATION_ID, Msg.translate( serverCtx, COMBINATION_ID), COMBINATION_ID, DisplayTypeConstants.ID, true, false, true, false ));

		if(m_AcctSchema.isHasAlias())
		{
			searchFieldVOs.add(new FieldVO ( ALIAS, Msg.translate( serverCtx, ALIAS), ALIAS, DisplayTypeConstants.String, false, true, false, false ));
			tableFieldVOs.add(new FieldVO ( ALIAS, Msg.translate( serverCtx, ALIAS), ALIAS, DisplayTypeConstants.String, true, true, false, false ));
		}
		
		searchFieldVOs.add(new FieldVO ( COMBINATION, Msg.translate( serverCtx, COMBINATION), COMBINATION, DisplayTypeConstants.String, false, true, false, false));
		tableFieldVOs.add(new FieldVO ( COMBINATION, Msg.translate( serverCtx, COMBINATION), COMBINATION, DisplayTypeConstants.String, true, true, false, false));

		/**
		 *	Create Fields in Element Order
		 */
		MAcctSchemaElement[] elements = m_AcctSchema.getAcctSchemaElements();
		for (MAcctSchemaElement ase : elements) {
			String type = ase.getElementType();
			//
			if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Organization))
			{
				FieldVO f_Org = new FieldVO(ORG, Msg.translate( serverCtx, ORG), ORG, DisplayTypeConstants.Table, false, true, false, false);
//			ZCOM 48029 	MLookup orgLookup = MLookupFactory.get (serverCtx, windowNO, 2404, DisplayTypeConstants.Table);
				MLookup orgLookup = MLookupFactory.get (serverCtx, windowNO, 1016, DisplayTypeConstants.Table);//				ZCOM 48029 
				f_Org.listBoxVO = Util.convertLookupToVO(orgLookup, true, "");
				searchFieldVOs.add(f_Org);				
				tableFieldVOs.add(new FieldVO(ORG, Msg.translate( serverCtx, ORG), "vc.AD_Org_ID", DisplayTypeConstants.ID, true, false, false, false));
				tableFieldVOs.add(new FieldVO(ORGNAME, Msg.translate( serverCtx, ORG), "o.Name", DisplayTypeConstants.String, true, true, false, false));
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Account))
			{
				FieldVO f_Account = new FieldVO( ACCOUNT, Msg.translate( serverCtx, ACCOUNT), ACCOUNT, DisplayTypeConstants.Search, false, true, false, false );
				f_Account.AD_Reference_ID = DisplayTypeConstants.Search;
				//ZCOM999 f_Account.AD_Reference_Value_ID=362;
				f_Account.AD_Reference_Value_ID=132; //ZCOM999 Il ne faut montrer que les Comptes
				MLookup accountLookup = MLookupFactory.get (serverCtx, windowNO, 1746, DisplayTypeConstants.Table);
				f_Account.ValidationCode = accountLookup.getValidation();
				f_Account.listBoxVO = Util.convertLookupToVO(accountLookup, true, "");
				searchFieldVOs.add(f_Account);
				tableFieldVOs.add(new FieldVO( ACCOUNT, Msg.translate( serverCtx, ACCOUNT), "vc.Account_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( ACCOUNTNAME, Msg.translate( serverCtx, ACCOUNT), "e.Name", DisplayTypeConstants.String, true, true, false, false ));
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_SubAccount))
			{
				FieldVO f_SubAccount = new FieldVO( SUBACCOUNT, Msg.translate( serverCtx, SUBACCOUNT), SUBACCOUNT, DisplayTypeConstants.Table, false, true, false, false );
				f_SubAccount.AD_Reference_ID = DisplayTypeConstants.Table; 
				MLookup subAccountLookup = MLookupFactory.get (serverCtx, windowNO, 14595, DisplayTypeConstants.Table);
				f_SubAccount.listBoxVO = Util.convertLookupToVO(subAccountLookup, true, "");
				searchFieldVOs.add(f_SubAccount);
				tableFieldVOs.add(new FieldVO( SUBACCOUNT, Msg.translate( serverCtx, SUBACCOUNT), "vc.C_SubAcct_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( SUBACCOUNTNAME, Msg.translate( serverCtx, SUBACCOUNT), "sa.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_ElementValue sa ON (vc.C_SubAcct_ID = sa.c_ElementValue_ID) ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Product))
			{
				searchFieldVOs.add(new FieldVO( PRODUCT, Msg.translate( serverCtx, PRODUCT), PRODUCT, DisplayTypeConstants.Search, false, true, false, false ));
				tableFieldVOs.add(new FieldVO( PRODUCT, Msg.translate( serverCtx, PRODUCT), "vc.M_Product_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( PRODUCTNAME, Msg.translate( serverCtx, PRODUCT), "p.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN M_Product p ON (vc.M_Product_ID = p.M_Product_ID) ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_BPartner))
			{
				searchFieldVOs.add(new FieldVO( BPARTNER, Msg.translate( serverCtx, BPARTNER), BPARTNER, DisplayTypeConstants.Search, false, true, false, false ));
				tableFieldVOs.add(new FieldVO( BPARTNER, Msg.translate( serverCtx, BPARTNER), "vc.C_BPartner_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( BPARTNERNAME, Msg.translate( serverCtx, BPARTNER), "b.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_BPartner b ON (vc.C_BPartner_ID = b.C_BPartner_ID) ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Campaign))
			{
				FieldVO f_Campaign = new FieldVO( CAMPAIGN , Msg.translate( serverCtx, CAMPAIGN), CAMPAIGN, DisplayTypeConstants.TableDir, false, true, false, false );
				MLookup campaignLookup = MLookupFactory.get (serverCtx, windowNO, 2409, DisplayTypeConstants.TableDir);
				f_Campaign.listBoxVO = Util.convertLookupToVO(campaignLookup, false, "");
				searchFieldVOs.add(f_Campaign);
				tableFieldVOs.add(new FieldVO( CAMPAIGN , Msg.translate( serverCtx, CAMPAIGN), "vc.C_Campaign_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( CAMPAIGNNAME , Msg.translate( serverCtx, CAMPAIGN), "c.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_Campaign c ON (vc.C_Campaign_ID = c.C_Campaign_ID)  ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_LocationFrom))
			{
				FieldVO f_LocFrom = new FieldVO( LOCATIONFROM, Msg.translate( serverCtx, LOCATIONFROM), LOCATIONFROM, DisplayTypeConstants.Search, false, true, false, false );
				f_LocFrom.AD_Reference_ID = DisplayTypeConstants.Search;
				f_LocFrom.AD_Reference_Value_ID=133; 
				searchFieldVOs.add(f_LocFrom);
				tableFieldVOs.add(new FieldVO( LOCATIONFROM , Msg.translate( serverCtx, LOCATIONFROM), "vc.C_LocFrom_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( LOCATIONFROMNAME , Msg.translate( serverCtx, LOCATIONFROM), "lf.City", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_Location lf ON (vc.C_LocFrom_ID = lf.C_Location_ID)  ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_LocationTo))
			{
				FieldVO f_LocTo = new FieldVO( LOCATIONTO, Msg.translate( serverCtx, LOCATIONTO), LOCATIONTO, DisplayTypeConstants.Search, false, true, false, false );
				f_LocTo.AD_Reference_ID = DisplayTypeConstants.Search;
				f_LocTo.AD_Reference_Value_ID=133; 
				searchFieldVOs.add(f_LocTo);
				tableFieldVOs.add(new FieldVO( LOCATIONTO , Msg.translate( serverCtx, LOCATIONTO), "vc.C_LocTo_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( LOCATIONTONAME , Msg.translate( serverCtx, LOCATIONTO), "lt.City", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_Location lt ON (vc.C_LocTo_ID = lt.C_Location_ID)  ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Project))
			{
				FieldVO f_Project = new FieldVO( PROJECT , Msg.translate( serverCtx, PROJECT), PROJECT, DisplayTypeConstants.TableDir, false, true, false, false );
				MLookup projectLookup = MLookupFactory.get (serverCtx, windowNO, 2408, DisplayTypeConstants.TableDir);
				f_Project.listBoxVO = Util.convertLookupToVO(projectLookup, false, "");
				searchFieldVOs.add(f_Project);
				tableFieldVOs.add(new FieldVO( PROJECT , Msg.translate( serverCtx, PROJECT), "vc.C_Project_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( PROJECTNAME , Msg.translate( serverCtx, PROJECT), "pr.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_Project pr ON (vc.C_Project_ID = pr.C_Project_ID  )  ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_SalesRegion))
			{
				FieldVO f_SalesRegion = new FieldVO( SALESREGION , Msg.translate( serverCtx, SALESREGION), SALESREGION, DisplayTypeConstants.Table, false, true, false, false );
				MLookup salesRegionLookup = MLookupFactory.get (serverCtx, windowNO, 2407, DisplayTypeConstants.Table);
				f_SalesRegion.listBoxVO = Util.convertLookupToVO(salesRegionLookup, false, "");
				searchFieldVOs.add(f_SalesRegion);
				tableFieldVOs.add(new FieldVO( SALESREGION , Msg.translate( serverCtx, SALESREGION), "vc.C_SalesRegion_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( SALESREGIONNAME , Msg.translate( serverCtx, SALESREGION), "sr.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_SalesRegion sr ON (vc.C_SalesRegion_ID = sr.C_SalesRegion_ID  )  ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_OrgTrx))
			{
				FieldVO f_OrgTrx = new FieldVO( ORGTRX , Msg.translate( serverCtx, ORGTRX), ORGTRX, DisplayTypeConstants.Table, false, true, false, false );
				MLookup orgTrxLookup = MLookupFactory.get (serverCtx, windowNO, 2404, DisplayTypeConstants.Table);
				f_OrgTrx.listBoxVO = Util.convertLookupToVO(orgTrxLookup, false, "");
				searchFieldVOs.add(f_OrgTrx);
				tableFieldVOs.add(new FieldVO(ORGTRX, Msg.translate( serverCtx, ORGTRX), "vc.AD_OrgTrx_ID", DisplayTypeConstants.String, true, false, false, false));
				tableFieldVOs.add(new FieldVO(ORGTRXNAME, Msg.translate( serverCtx, ORGTRX), "ot.Name", DisplayTypeConstants.String, true, true, false, false));
				fromClause += " LEFT OUTER JOIN AD_Org ot ON (vc.AD_OrgTrx_ID=ot.AD_Org_ID) ";
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Activity))
			{
				FieldVO f_Activity = new FieldVO( ACTIVITY , Msg.translate( serverCtx, ACTIVITY), ACTIVITY, DisplayTypeConstants.TableDir, false, true, false, false );
				MLookup activityLookup = MLookupFactory.get (serverCtx, windowNO, 3378, DisplayTypeConstants.TableDir);
				f_Activity.listBoxVO = Util.convertLookupToVO(activityLookup, false, "");
				searchFieldVOs.add(f_Activity);
				tableFieldVOs.add(new FieldVO(ACTIVITY, Msg.translate( serverCtx, ACTIVITY), "vc.C_ACTIVITY_ID", DisplayTypeConstants.String, true, false, false, false));
				tableFieldVOs.add(new FieldVO(ACTIVITYNAME, Msg.translate( serverCtx, ACTIVITY), "a.Name", DisplayTypeConstants.String, true, true, false, false));
				fromClause += " LEFT OUTER JOIN C_Activity a ON (vc.C_Activity_ID=a.C_Activity_ID) ";
			}
			//	User1
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_UserList1))
			{
				FieldVO f_User1 = new FieldVO( USER1, Msg.translate( serverCtx, USER1), USER1, DisplayTypeConstants.Search, false, true, false, false );
				f_User1.AD_Reference_ID = DisplayTypeConstants.Search;
				f_User1.AD_Reference_Value_ID=134; 
				MLookup user1Lookup = MLookupFactory.get (serverCtx, windowNO, 1754, DisplayTypeConstants.Search);
				f_User1.listBoxVO = Util.convertLookupToVO(user1Lookup, true, "");
				searchFieldVOs.add(f_User1);
				tableFieldVOs.add(new FieldVO( USER1, Msg.translate( serverCtx, USER1), "vc.User1_ID", DisplayTypeConstants.String, true, false, false, false ));
				tableFieldVOs.add(new FieldVO( USER1NAME, Msg.translate( serverCtx, USER1), "u1.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_ElementValue u1 ON (vc.User1_ID = u1.C_ElementValue_ID) ";			
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_UserList2))
			{
				FieldVO f_User2 = new FieldVO( USER2, Msg.translate( serverCtx, USER2), USER2, DisplayTypeConstants.Search, false, true, false, false );
				f_User2.AD_Reference_ID = DisplayTypeConstants.Search;
				f_User2.AD_Reference_Value_ID=137; 
				MLookup user2Lookup = MLookupFactory.get (serverCtx, windowNO, 1755, DisplayTypeConstants.Search);
				f_User2.listBoxVO = Util.convertLookupToVO(user2Lookup, true, "");
				searchFieldVOs.add(f_User2);
				tableFieldVOs.add(new FieldVO( USER2, Msg.translate( serverCtx, USER2), "vc.User2_ID", DisplayTypeConstants.String, true, false, false, false ));//ZCOM999 - REDMINE 19407
				tableFieldVOs.add(new FieldVO( USER2NAME, Msg.translate( serverCtx, USER2), "u2.Name", DisplayTypeConstants.String, true, true, false, false ));
				fromClause += " LEFT OUTER JOIN C_ElementValue u2 ON (vc.User2_ID = u2.C_ElementValue_ID) ";			
			}			
		}//	Create Fields in Element Order

		searchFieldVOs.add( new FieldVO(CREATENEW, CREATENEW, DisplayTypeConstants.Button) );
							
		components.add( new SearchComponentImpl (searchFieldVOs.toArray( new FieldVO[ searchFieldVOs.size() ] )) );
		
		components.add(new TableComponentImpl(serverCtx, tableFieldVOs.toArray(new FieldVO[tableFieldVOs.size()]),
				"",
					//	FROM
					fromClause,
					//	WHERE
					whereClause,  
					false, "C_ValidCombination"){ //null means doesn't have security sql access
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) 
			{
				ArrayList<Object> params = new ArrayList<Object>(2);
				

				StringBuffer otherClause = new StringBuffer();
				otherClause.append(" AND vc.AD_Client_ID=?");
				params.add(ctx.getAD_Client_ID());
				
				otherClause.append(" AND vc.C_AcctSchema_ID=?");
				params.add(windowCtx.get("C_AcctSchema_ID"));
				
				otherClause.append(" AND IsFullyQualified=?");
				params.add("Y");
				
				if(m_AcctSchema.isHasAlias()&&
						!(windowCtx.get(ALIAS) == null || "".equals(windowCtx.get(ALIAS)))) {
					otherClause.append(" AND UPPER(vc.Alias) LIKE ?");
					String value = windowCtx.get(ALIAS).toUpperCase();
					if (!value.endsWith("%"))
						value += "%";
					params.add(value);
				}

				if(!(windowCtx.get(COMBINATION) == null || "".equals(windowCtx.get(COMBINATION)))) {
					otherClause.append(" AND UPPER(vc.Combination) LIKE ?");
					String value = windowCtx.get(COMBINATION).toUpperCase();
					if (!value.endsWith("%"))
						value += "%";
					params.add(value);
				}

				if(!(windowCtx.get(ORG) == null || windowCtx.getAsInt(ORG)<=0)) {
					otherClause.append(" AND vc.AD_Org_ID=?");
					params.add(windowCtx.get(ORG));
				}

				if(!(windowCtx.get(ACCOUNT) == null || windowCtx.getAsInt(ACCOUNT)<=0)) {
					otherClause.append(" AND vc.Account_ID=?");
					params.add(windowCtx.get(ACCOUNT));
				}
				
				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_SubAccount) &&
						!(windowCtx.get(SUBACCOUNT) == null || windowCtx.getAsInt(SUBACCOUNT)<=0)) {
					otherClause.append(" AND vc.C_SubAcct_ID=?");
					params.add(windowCtx.get(SUBACCOUNT));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_Product) &&
						!(windowCtx.get(PRODUCT) == null || windowCtx.getAsInt(PRODUCT)<=0)) {
					otherClause.append(" AND vc.M_Product_ID=?");
					params.add(windowCtx.get(PRODUCT));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_BPartner) &&
						!(windowCtx.get(BPARTNER) == null || windowCtx.getAsInt(BPARTNER)<=0)) {
					otherClause.append(" AND vc.C_BPartner_ID=?");
					params.add(windowCtx.get(BPARTNER));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_Campaign) &&
						!(windowCtx.get(CAMPAIGN) == null || windowCtx.getAsInt(CAMPAIGN)<=0)) {
					otherClause.append(" AND vc.C_Campaign_ID=?");
					params.add(windowCtx.get(CAMPAIGN));
				}
				
				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_Project) &&
						!(windowCtx.get(PROJECT) == null || windowCtx.getAsInt(PROJECT)<=0)) {
					otherClause.append(" AND vc.C_Project_ID=?");
					params.add(windowCtx.get(PROJECT));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_LocationFrom) &&
						!(windowCtx.get(LOCATIONFROM) == null || windowCtx.getAsInt(LOCATIONFROM)<=0)) {
					otherClause.append(" AND vc.C_LocFrom_ID=?");
					params.add(windowCtx.get(LOCATIONFROM));
				}
				
				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_LocationTo) &&
						!(windowCtx.get(LOCATIONTO) == null || windowCtx.getAsInt(LOCATIONTO)<=0)) {
					otherClause.append(" AND vc.C_LocTo_ID=?");
					params.add(windowCtx.get(LOCATIONTO));
				}
				
				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_SalesRegion) &&
						!(windowCtx.get(SALESREGION) == null || windowCtx.getAsInt(SALESREGION)<=0)) {
					otherClause.append(" AND vc.C_SalesRegion_ID=?");
					params.add(windowCtx.get(SALESREGION));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_OrgTrx) &&
						!(windowCtx.get(ORGTRX) == null || windowCtx.getAsInt(ORGTRX)<=0)) {
					otherClause.append(" AND vc.AD_OrgTrx_ID=?");
					params.add(windowCtx.get(ORGTRX));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_Activity) &&
						!(windowCtx.get(ACTIVITY) == null || windowCtx.getAsInt(ACTIVITY)<=0)) {
					otherClause.append(" AND vc.C_Activity_ID=?");
					params.add(windowCtx.get(ACTIVITY));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_UserList1) &&
						!(windowCtx.get(USER1) == null || windowCtx.getAsInt(USER1)<=0)) {
					otherClause.append(" AND vc.User1_ID=?");
					params.add(windowCtx.get(USER1));
				}

				if(m_AcctSchema.isAcctSchemaElement(X_C_AcctSchema_Element.ELEMENTTYPE_UserList2) &&
						!(windowCtx.get(USER2) == null || windowCtx.getAsInt(USER2)<=0)) {
					otherClause.append(" AND vc.User2_ID=?");
					params.add(windowCtx.get(USER2));
				}

				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);
				
				return new QueryWithBindings( sql, params );				
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY vc.Combination";
			}
		});
	}

	
	
	@Override
	public ChangeVO processCallback( String sender )
	{
		ChangeVO changeVO = new ChangeVO();

		if( sender.equals( CREATENEW ) )
		{
			cmd_createnew( changeVO, serverCtx, windowCtx );
		}

		return changeVO;
	}

	/**
	 * Process Button Pressed - Process Matching
	 */
	private void cmd_createnew( ChangeVO changeVO, Ctx ctx, WindowCtx windowCtx )
	{
		
		/**
		 *	Check completeness (mandatory fields) ... and for duplicates
		 */
		StringBuffer sb = new StringBuffer();
		StringBuffer sql = new StringBuffer ("SELECT C_ValidCombination_ID, Alias FROM C_ValidCombination WHERE ");
		Object value = null;
		String p_alias = "";
		
		if (m_AcctSchema.isHasAlias())
		{
			p_alias = windowCtx.get(ALIAS);
			if(p_alias== null)
				p_alias="";
		}

		MAcctSchemaElement[] elements = m_AcctSchema.getAcctSchemaElements();
		for (MAcctSchemaElement ase : elements) {
			String type = ase.getElementType();
			//
			if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Organization))
			{
				value = windowCtx.getAsInt(ORG);
				sql.append(ORG);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Account))
			{
				value = windowCtx.getAsInt(ACCOUNT);
				sql.append(ACCOUNT);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_SubAccount))
			{
				value = windowCtx.getAsInt(SUBACCOUNT);
				sql.append(SUBACCOUNT);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Product))
			{
				value = windowCtx.getAsInt(PRODUCT);
				sql.append(PRODUCT);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_BPartner))
			{
				value = windowCtx.getAsInt(BPARTNER);
				sql.append(BPARTNER);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Campaign))
			{
				value = windowCtx.getAsInt(CAMPAIGN);
				sql.append(CAMPAIGN);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_LocationFrom))
			{
				value = windowCtx.getAsInt(LOCATIONFROM);
				sql.append(LOCATIONFROM);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_LocationTo))
			{
				value = windowCtx.getAsInt(LOCATIONTO);
				sql.append(LOCATIONTO);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Project))
			{
				value = windowCtx.getAsInt(PROJECT);
				sql.append(PROJECT);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_SalesRegion))
			{
				value = windowCtx.getAsInt(SALESREGION);
				sql.append(SALESREGION);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_OrgTrx))
			{
				value = windowCtx.getAsInt(ORGTRX);
				sql.append(ORGTRX);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Activity))
			{
				value = windowCtx.getAsInt(ACTIVITY);
				sql.append(ACTIVITY);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_UserList1))
			{
				value = windowCtx.getAsInt(USER1);
				sql.append(USER1);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			else if (type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_UserList2))
			{
				value = windowCtx.getAsInt(USER2);
				sql.append(USER2);
				if (value == null || (Integer)value <=0)
					sql.append(" IS NULL AND ");
				else
					sql.append("=").append(value).append(" AND ");
			}
			//
			if ((ase.isMandatory()|| type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Organization)
					|| type.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Account))
					&& (value == null || (Integer)value <=0))
				sb.append(ase.getName()).append(", ");
		}	//	Fields in Element Order

		if (sb.length() != 0)
		{
			
			changeVO.addError(Msg.translate(serverCtx, "FillMandatory")+sb.substring(0, sb.length()-2));
			return;
		}

		
		/**
		 *	Check if already exists
		 */
		sql.append("AD_Client_ID=? AND C_AcctSchema_ID=?");
		
		int IDvalue = 0;
		String Alias = null;
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE,null);
			pstmt.setInt(1, ctx.getAD_Client_ID());
			pstmt.setInt(2, m_AcctSchema.getC_AcctSchema_ID());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				IDvalue = rs.getInt(1);
				Alias = rs.getString(2);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
			IDvalue = 0;
		}

		if (Alias == null)
			Alias = "";

		if(m_AcctSchema.isHasAlias() && p_alias.length() !=0)
		{
			String sql1 = "SELECT COUNT(*) FROM C_ValidCombination WHERE Alias=?";
			sql1+= " AND AD_Client_ID = ?";											// #ZCOM999 #55911
			int ii = QueryUtil.getSQLValue(null, sql1, 
					// Alias														// #ZCOM999 #55911
					new Object[]{p_alias, ctx.getAD_Client_ID()}								// #ZCOM999 #55911
					);
			if (ii != 0)
			{
				changeVO.addError(Msg.translate(serverCtx, "DuplicateAlias"));
				return;
			}			
		}
			
		//	We have an account like this already - check alias
		if (IDvalue != 0 && m_AcctSchema.isHasAlias()
			&& !p_alias.equals(Alias))
		{

			sql = new StringBuffer("UPDATE C_ValidCombination SET Alias=");
			if (p_alias.length() == 0)
				sql.append("NULL");
			else
				sql.append("'").append(p_alias).append("'");
			sql.append(" WHERE C_ValidCombination_ID=").append(IDvalue);
			int i = 0;
			try
			{
				PreparedStatement pstmt = DB.prepareStatement(sql.toString(),ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE,null);
				i = pstmt.executeUpdate();
				pstmt.close();
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql.toString(), e);
			}
			if (i == 0)
				changeVO.addError("AccountNotUpdated");
		}
		
		MAccount acct = MAccount.get (serverCtx, 
				ctx.getAD_Client_ID(), 
				windowCtx.getAsInt(ORG),
				windowCtx.getAsInt("C_AcctSchema_ID"), 
				windowCtx.getAsInt(ACCOUNT), 
				windowCtx.getAsInt(SUBACCOUNT),
				windowCtx.getAsInt(PRODUCT), 
				windowCtx.getAsInt(BPARTNER), 
				windowCtx.getAsInt(ORGTRX), // C_OrgTrx_ID
				windowCtx.getAsInt(LOCATIONFROM), // C_LocFrom_ID 
				windowCtx.getAsInt(LOCATIONTO), //C_LocTo_ID, 
				windowCtx.getAsInt(SALESREGION), //C_SRegion_ID, 
				windowCtx.getAsInt(PROJECT), //C_Project_ID, 
				windowCtx.getAsInt(CAMPAIGN), //C_Campaign_ID, 
				windowCtx.getAsInt(ACTIVITY), //C_Activity_ID, 
				windowCtx.getAsInt(USER1), //User1_ID, 
				windowCtx.getAsInt(USER2), //User2_ID, 
				0, 0);
			if (acct != null && acct.get_ID() == 0)
				acct.save();
			
			
			acct.setAlias(windowCtx.get("Alias"));
			acct.save();

	}



	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

}
