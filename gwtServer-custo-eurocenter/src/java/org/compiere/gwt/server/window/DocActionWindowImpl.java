package org.compiere.gwt.server.window;

/**
 * @author dzhao
 *
 */


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.logging.Level;

import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.model.MDocType;
import org.compiere.model.MRole;
import org.compiere.model.X_C_AllocationHdr;
import org.compiere.model.X_C_BankStatement;
import org.compiere.model.X_C_Cash;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_Order;
import org.compiere.model.X_C_Payment;
import org.compiere.model.X_GL_Journal;
import org.compiere.model.X_GL_JournalBatch;
import org.compiere.model.X_M_InOut;
import org.compiere.model.X_M_Inventory;
import org.compiere.model.X_M_Movement;
import org.compiere.model.X_M_MovementConfirm;
import org.compiere.model.X_M_WarehouseTask;
import org.compiere.model.X_M_WorkOrder;
import org.compiere.model.X_M_WorkOrderTransaction;
import org.compiere.model.X_Z_BankTransfert;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.ResponseVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO;
import org.compiere.wf.MWFActivity;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;
import com.audaxis.compiere.model.proxy.MRoleProxy;


public class DocActionWindowImpl extends WindowImpl
{

	private static CLogger log = CLogger.getCLogger( DocActionWindowImpl.class );
	private static String[]		s_value = null;
	private static String[]		s_name;
	private static String[]		s_description;
	private final FieldVO fieldDocAction;
	private final FieldVO fieldDocMessage;
	// private final FieldVO fieldScheduleRequest;
	private final SearchComponentImpl component;
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;

	public DocActionWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {

		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		fieldDocAction = new FieldVO("DocAction",  Msg.translate( serverCtx, "DocAction"), DisplayTypeConstants.Table ); 
		fieldDocAction.isImpactsValue = true;
		
		fieldDocMessage = new FieldVO("DocMessage",  "", DisplayTypeConstants.TextLong );
		fieldDocMessage.IsReadOnly = true;
		
		// fieldScheduleRequest = new FieldVO("ScheduleDate", Msg.translate( serverCtx, "ScheduleDate"), DisplayTypeConstants.DateTime );

		component = new SearchComponentImpl(new FieldVO[]{
				fieldDocAction,
				fieldDocMessage //, fieldScheduleRequest
		});
		component.getComponentVO().numColumns = 1;
		
		components.add(component);

	}


	@Override
	public ChangeVO processCallback(String sender) {
		ChangeVO change = new ChangeVO();
		validateResponse(change);
		if(sender.equals("DocAction")) {
			change.changedFields = new HashMap<String, String>(); 
			for (int i = 0; i < s_value.length; i++)
				if (s_value[i].equals(windowCtx.get("DocAction"))) {
					change.changedFields.put("DocMessage", s_description[i]);
					return change;
				}
		}
		return change;
	}

	/**
	 *	Dynamic Init - determine valid DocActions based on DocStatus for the different documents.
	 *  <pre>
	 *  DocStatus (131)
			??                         Unknown
			AP *                       Approved
			CH                         Changed
			CL *                       Closed
			CO *                       Completed
			DR                         Drafted
			IN                         Inactive
			NA                         Not Approved
			PE                         Posting Error
			PO *                       Posted
			PR *                       Printed
			RE                         Reversed
			TE                         Transfer Error
			TR *                       Transferred
			VO *                       Voided
			XX                         Being Processed
	 *
	 *   DocAction (135)
			--                         <None>
			AP *                       Approve
			CL *                       Close
			CO *                       Complete
			PO *                       Post
			PR *                       Print
			RA                         Reverse - Accrual
			RC                         Reverse - Correction
			RE                         RE-activate
			RJ                         Reject
			TR *                       Transfer
			VO *                       Void
			XL                         Unlock
	 *  </pre>
	 * 	@param Record_ID id
	 */
	@Override
	public void validateResponse(ResponseVO responseVO)
	{
		readReference();
		String DocStatus = windowCtx.get("DocStatus");
		String DocAction = windowCtx.get("DocAction");
		//
		String Processing = windowCtx.get("Processing");
		String OrderType =windowCtx.get("OrderType");
		String IsSOTrx = windowCtx.get("IsSOTrx");
		int C_DocType_ID = Util.string2Int(windowCtx.get("C_DocTypeTarget_ID"));
		if(C_DocType_ID==0)
			C_DocType_ID = Util.string2Int(windowCtx.get("C_DocType_ID"));
		MDocType dt = MDocType.get(serverCtx, C_DocType_ID);
		MDocTypeProxy dtp = new MDocTypeProxy(dt);
		MDocTypeInfo dti = MDocTypeInfo.get(serverCtx, C_DocType_ID, (Trx) null);
		int AD_Client_ID = Util.string2Int(windowCtx.get("AD_Client_ID"));
		int AD_Role_ID = Util.string2Int(serverCtx.get("#AD_Role_ID"));
		String m = Msg.getMsg(serverCtx, "EC_ADMIN_ROLE");
		boolean allActions = false;
		if(m.contains(""+AD_Role_ID))
			allActions=true;
		//boolean allActions = false;
		//if(m.contains(""+AD_Role_ID))
		//	allActions=true;
//		EggoCtx.setConstants();
		boolean roleGest = false;
		String mx = Msg.getMsg(serverCtx, "EC_GEST++_ROLE");
		if(mx.contains(""+AD_Role_ID))
			roleGest=true;
		MRoleProxy rp = new MRoleProxy(new MRole(serverCtx, AD_Role_ID, (Trx)null));
		int AD_Table_ID = Util.string2Int(windowCtx.get(WindowVO.AD_TABLE_ID));
		int Record_ID = Util.string2Int(windowCtx.get(WindowVO.RECORD_ID));
		String tableName = windowCtx.get(WindowVO.TABLE_NAME);
		if (DocStatus == null)
		{
			log.fine("*** ERROR ***");
			return;
		}

		log.fine("DocStatus=" + DocStatus 
				+ ", DocAction=" + DocAction + ", OrderType=" + OrderType 
				+ ", IsSOTrx=" + IsSOTrx + ", Processing=" + Processing 
				+ ", AD_Table_ID=" + AD_Table_ID + ", Record_ID=" + Record_ID);
		//
		String[] options = new String[s_value.length];
		int index = 0;

		/**
		 * 	Check Existence of Workflow Acrivities
		 */
		String wfStatus = MWFActivity.getActiveInfo(serverCtx, AD_Table_ID, Record_ID); 
		if (wfStatus != null)
		{
			responseVO.addError(Msg.getMsg(serverCtx,"WFActiveForRecord")+wfStatus);
			return;
		}

		//	Status Change
		if (!checkStatus(tableName, Record_ID, DocStatus))
		{
			responseVO.addError(Msg.getMsg(serverCtx, "DocumentStatusChanged"));
			return;
		}

		/*******************
		 *  General Actions
		 */

		//	Locked
		if (Processing != null)
		{
			boolean locked = "Y".equals(Processing);
			if (locked)
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Unlock;
		}

		//	Approval required           ..  NA
		if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_NotApproved))
		{
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
		}
		//	Draft/Invalid				..  DR/IN PAsse ici !
		else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
		{
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Complete;
			//	options[index++] = DocumentEngine.ACTION_Prepare;
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
		}
		//	In Process                  ..  IP
		else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Approved))
		{
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Complete;
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
		}
		//	Complete                    ..  CO
		else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
		{
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Close;
		}
		//	Waiting Payment
		else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_WaitingPayment)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_WaitingConfirmation))
		{
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
			options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
		}
		//	Closed, Voided, REversed    ..  CL/VO/RE
		else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Closed) 
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Voided) 
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Reversed))
			return;

		/********************
		 *  Order
		 */
		if (AD_Table_ID == X_C_Order.Table_ID)
		{
			//	Draft                       ..  DR/IP/IN passe ici
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
					|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
					|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Close;
				//	Draft Sales Order Quote/Proposal - Process
				if ("Y".equals(IsSOTrx)
						&& ("OB".equals(OrderType) || "ON".equals(OrderType)))
					DocAction = org.compiere.vos.DocActionConstants.ACTION_Prepare;
			}
			//	Complete                    ..  CO
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_ReActivate;
			}
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_WaitingPayment))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_ReActivate;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Close;
			}
		}
		//Si nous nous trouvons dans un SalesOrder Eggo non de type de doc Contrat Store
		//Enlever Reaxctiver, Traiter, Cloturer
		
		//MERGE
		String[] optionsX = new String[s_value.length];
		//boolean ID_Exclude = ht.get(C_DocType_ID)==null?false:true;
		if (AD_Table_ID == X_C_Order.Table_ID && IsSOTrx.equals("Y")&& !allActions && dti!=null && dti.isLimitDocAction() && !rp.isLimitDocAction() && !roleGest)
		{
			//Retirer les actions Reaxctiver, Traiter, Cloturer
			for (int i = 0; i < s_value.length; i++) {
				if (options[i] != null
						&& (options[i]
								.equals(org.compiere.vos.DocActionConstants.ACTION_ReActivate)
								||  options[i]
									.equals(org.compiere.vos.DocActionConstants.ACTION_Void)
									||  options[i]
											.equals(org.compiere.vos.DocActionConstants.ACTION_ReActivate)
											||  options[i]
											.equals(org.compiere.vos.DocActionConstants.ACTION_Close)
											||  options[i]
											.equals(org.compiere.vos.DocActionConstants.ACTION_Complete)
				//						||  options[i]
				//							.equals(org.compiere.vos.DocActionConstants.ACTION_Prepare)	
							)
					)
					options[i] = null;
			}
			int j = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					optionsX[j++]=options[i];
			}
			options=null;
			options = new String[s_value.length];
			options = optionsX;
			index = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					index++;
				
			}
		}
		
		// MERGE
		//TA
		if (AD_Table_ID == X_C_Order.Table_ID && IsSOTrx.equals("N") && !allActions
				// && (serverCtx.get("#IsEGGO_CLIENTID").equals("Y"))
				&& dti!=null && dti.isCuisine()
				&& !rp.isLimitDocAction())
		{
			//Retirer les actions Reaxctiver, Traiter, Cloturer
			for (int i = 0; i < s_value.length; i++) {
				if (options[i] != null
						&& (options[i]
				//					.equals(org.compiere.vos.DocActionConstants.ACTION_Void)
				//					||  options[i]
				//							.equals(org.compiere.vos.DocActionConstants.ACTION_ReActivate)
				//							||  options[i]
											.equals(org.compiere.vos.DocActionConstants.ACTION_Close)
				//							||  options[i]
				//							.equals(org.compiere.vos.DocActionConstants.ACTION_Complete)
				//						||  options[i]
				//							.equals(org.compiere.vos.DocActionConstants.ACTION_Prepare)	
							)
					)
					options[i] = null;
			}
			int j = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					optionsX[j++]=options[i];
			}
			options=null;
			options = new String[s_value.length];
			options = optionsX;
			index = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					index++;
				
			}
		}
		
		//TA
		//Si nous nous trouvons dans un SalesOrder Eggo non de type de doc Contrat Store
		//Enlever Reaxctiver, Traiter, Cloturer
		//MERGE
		optionsX = new String[s_value.length];
		//ID_Exclude = ht.get(C_DocType_ID)==null?false:true;
		if (AD_Table_ID == X_C_Order.Table_ID && !allActions && !roleGest && IsSOTrx.equals("Y") && dti!=null && dti.isLimitDocAction() && dti.isDirect()  && !rp.isLimitDocAction())
		{
			//Retirer les actions Reaxctiver, Traiter, Cloturer
			for (int i = 0; i < s_value.length; i++) {
				if (options[i] != null
						&& ( options[i]
											.equals(org.compiere.vos.DocActionConstants.ACTION_Prepare)
							)
					)
					// options[i] = null;
					;
			}
			int j = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					optionsX[j++]=options[i];
			}
			options=null;
			options = new String[s_value.length];
			options = optionsX;
			index = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					index++;
				
			}
		}

		//Si nous nous trouvons dans un SalesOrder Eggo de type Vente SAV
				//Ne garder que Prepare et Complete
				
//MERGE
				optionsX = new String[s_value.length];

				if (AD_Table_ID == X_C_Order.Table_ID && !allActions && !roleGest && IsSOTrx.equals("Y") && dti!=null && dti.isLimitDocAction() && dti.isSAV() && !rp.isLimitDocAction() && dti.isCuisine())
				{
					//Ne garder que Prepare et Complete
					for (int i = 0; i < s_value.length ; i++) {
						if (options[i] != null
								&& ( options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Void)
									|| options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Close)
									)
							)
							options[i] = null;
							;
					}
					int j = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							optionsX[j++]=options[i];
					}
					options=null;
					options = new String[s_value.length];
					options = optionsX;
					index = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							index++;
						
					}
				}
		
		
		/********************
		 *  Shipment
		 */
		else if (AD_Table_ID == X_M_InOut.Table_ID)
		{
			//	Complete                    ..  CO
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
		}
		/********************
		 *  Invoice
		 */
		else if (AD_Table_ID == X_C_Invoice.Table_ID)
		{
			//	Complete                    ..  CO
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
		}
		/********************
		 *  Cash Journal
		 */
		else if (AD_Table_ID == X_C_Cash.Table_ID)
		{
			//	Draft                    ..  DR
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted))
			{
				//Void is not a valid option for Cash Journal in Drafted status
				int t1,t2;
				for(t1=0,t2=0;t1<index;t1++,t2++)
				{
					if(	options[t1] == org.compiere.vos.DocActionConstants.ACTION_Void)
						t2++;
					options[t1]=options[t2];
				}
				index--;
			}
		}
		
		
		/********************
		 *  Payment
		 */
		else if (AD_Table_ID == X_C_Payment.Table_ID )
		{
			//	Complete                    ..  CO
			//if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			//{
			if(!rp.isLimitDocAction() && !allActions)
			{
				for (int i = 0; i < s_value.length; i++) {
					if (options[i] != null
							&& (options[i]
										.equals(org.compiere.vos.DocActionConstants.ACTION_Void)
										||  options[i]
												.equals(org.compiere.vos.DocActionConstants.ACTION_ReActivate)
												||  options[i]
												.equals(org.compiere.vos.DocActionConstants.ACTION_Close)
					//							||  options[i]
					//							.equals(org.compiere.vos.DocActionConstants.ACTION_Complete)
											||  options[i]
												.equals(org.compiere.vos.DocActionConstants.ACTION_Prepare)	
								)
						)
						options[i] = null;
					}
					int j = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							optionsX[j++]=options[i];
					}
					options=null;
					options = new String[s_value.length];
					options = optionsX;
					index = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							index++;
						
					}
			}
			else
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
			//}
		}
		/********************
		 *  GL Journal
		 */
		else if (AD_Table_ID == X_GL_Journal.Table_ID || AD_Table_ID == X_GL_JournalBatch.Table_ID)
		{
			//	Complete                    ..  CO
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Accrual;
			}
		}
		/********************
		 *  Allocation
		 */
		else if (AD_Table_ID == X_C_AllocationHdr.Table_ID)
		{
			//	Complete                    ..  CO
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
		}
		/********************
		 *  Bank Statement
		 */
		else if (AD_Table_ID == X_C_BankStatement.Table_ID)
		{
			//	Complete                    ..  CO
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
			}
		}
		/********************
		 *  Physical Inventory
		 */
		else if (AD_Table_ID == X_M_Inventory.Table_ID)
		{
			//TAM
			//if (AD_Table_ID == X_C_Order.Table_ID)
			//{
				//	Draft                       ..  DR/IP/IN
				if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
						|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
						|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
				{
					options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
					options[index++] = org.compiere.vos.DocActionConstants.ACTION_Close;
				}
				//	Complete                    ..  CO
				else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
				{
					options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
					options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
				}
			//}
			//TAM
//			//	Complete                    ..  CO
//			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
//			{
//				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
//				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
//			}
		}
		//EC70		
		else if (AD_Table_ID == X_M_Movement.Table_ID )
		{
			String NotAbleRole = Msg.getMsg(serverCtx,
					"TRFT_ROLES_RESTRICT");
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
					|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
					|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Close;
			}
			//	Complete                    ..  CO
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
			/*
			if(NotAbleRole.contains(""+AD_Role_ID))
			{
				String IsInTransit = windowCtx.get("IsInTransit");
				C_DocType_ID = Util.string2Int(windowCtx.get("C_DocType_ID"));
				
				Object params[] = {serverCtx.getAD_Client_ID(), C_DocType_ID, IsInTransit, DocStatus};
				boolean IsAbleToCancel = false;
				IsAbleToCancel = DB.getSQLValue(null, "Select Case when IsAbleToCancel='Y' then 1 else 0 end "
						+ "from Z_P_REF_TRFT where AD_Client_ID = ? and C_DocType_ID = ? and IsInTransit = ? and DocStatus = ? and IsActive = 'Y'", params)==1?true:false;
				if(!IsAbleToCancel)
				{
					//Ne garder que Prepare et Complete
					for (int i = 0; i < s_value.length ; i++) {
						if (options[i] != null
							&& ( options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Void)
								|| options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Close)
										|| options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Prepare)
								)
						)
						options[i] = null;
						;
					}
					int j = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							optionsX[j++]=options[i];
					}
					options=null;
					options = new String[s_value.length];
					options = optionsX;
					index = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							index++;
					
					}
				}
			
			}*/
		}
		else if (AD_Table_ID == X_M_MovementConfirm.Table_ID )
		{
			String NotAbleRole = Msg.getMsg(serverCtx,
					"TRFT_ROLES_RESTRICT");
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
					|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
					|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Close;
			}
			//	Complete                    ..  CO
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
			if(NotAbleRole.contains(""+AD_Role_ID))
			{
					//Ne garder que Prepare et Complete
					for (int i = 0; i < s_value.length ; i++) {
						if (options[i] != null
							&& ( options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Void)
								|| options[i].equals(org.compiere.vos.DocActionConstants.ACTION_Close)
								)
						)
						options[i] = null;
						;
					}
					int j = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							optionsX[j++]=options[i];
					}
					options=null;
					options = new String[s_value.length];
					options = optionsX;
					index = 0;
					for (int i = 0; i < options.length; i++) {
						if(options[i]!=null)
							index++;
					
					}
			
			}
		}
		/********************
		 *  Warehouse Task
		 */		
		else if (AD_Table_ID == X_M_WarehouseTask.Table_ID)
		{
			//	Draft                       ..  DR/IP/IN
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
			}
			//	Complete                    ..  CO
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
		}
		/********************
		 *  Work Order
		 */		
		else if (AD_Table_ID == X_M_WorkOrder.Table_ID)
		{
			//	Draft                       ..  DR/IP/IN
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
			}
			//	Complete                    ..  CO
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_ReActivate;
			}
		}
		/********************
		 *  Work Order Transaction
		 */		
		else if (AD_Table_ID == X_M_WorkOrderTransaction.Table_ID)
		{
			//	Draft                       ..  DR/IP/IN
			if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Drafted)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_InProgress)
				|| DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Invalid))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Prepare;
			}
			//	Complete                    ..  CO
			else if (DocStatus.equals(org.compiere.vos.DocActionConstants.STATUS_Completed))
			{
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
				options[index++] = org.compiere.vos.DocActionConstants.ACTION_Reverse_Correct;
			}
		}
		// MERGE

		else if (AD_Table_ID == X_Z_BankTransfert.Table_ID 
				//&& serverCtx.get("#IsEGGO_CLIENTID").equals("Y"))
				&& dti!=null && dti.isCuisine())
		{
			//options[index++] = org.compiere.vos.DocActionConstants.ACTION_Void;
			for (int i = 0; i < s_value.length; i++) {
			if (options[i] != null
					&& (options[i]
								.equals(org.compiere.vos.DocActionConstants.ACTION_Void)
								||  options[i]
										.equals(org.compiere.vos.DocActionConstants.ACTION_ReActivate)
										||  options[i]
										.equals(org.compiere.vos.DocActionConstants.ACTION_Close)
			//							||  options[i]
			//							.equals(org.compiere.vos.DocActionConstants.ACTION_Complete)
									||  options[i]
										.equals(org.compiere.vos.DocActionConstants.ACTION_Prepare)	
						)
				)
				options[i] = null;
			}
			int j = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					optionsX[j++]=options[i];
			}
			options=null;
			options = new String[s_value.length];
			options = optionsX;
			index = 0;
			for (int i = 0; i < options.length; i++) {
				if(options[i]!=null)
					index++;
				
			}
		}

		/**
		 *	Fill actionCombo
		 */

		ArrayList<ValueNamePair> listOptions = new ArrayList<ValueNamePair>();
		for (int i = 0; i < index; i++)
		{
			//	Serach for option and add it
			boolean added = false;
			for (int j = 0; j < s_value.length && !added; j++)
				if (options[i].equals(s_value[j]))
				{
					listOptions.add(new ValueNamePair(s_value[j], s_name[j]));
					added = true;
				}
		}

		//	setDefault
		if (DocAction.equals("--"))		//	If None, suggest closing
			DocAction = org.compiere.vos.DocActionConstants.ACTION_Close;
		String defaultV = ""; String defaultD = "";
		for (int i = 0; i < s_value.length && defaultV.equals(""); i++)
			if (DocAction.equals(s_value[i])) {
				defaultV = s_value[i];
				defaultD = s_description[i];
			}

		fieldDocAction.listBoxVO = new ListBoxVO(listOptions.toArray(new ValueNamePair[listOptions.size()]), defaultV);
		fieldDocMessage.DefaultValue = defaultD; 

		if(fieldDocAction.listBoxVO != null && fieldDocAction.listBoxVO.getOptions().size() == 0)
			responseVO.addError("NoAvailableDocActions");
	}	//	dynInit

	/**
	 * 	Check Status Change
	 *	@param TableName table name
	 *	@param Record_ID record
	 *	@param DocStatus current doc status
	 *	@return true if status not changed
	 */
	private boolean checkStatus (String TableName, int Record_ID, String DocStatus)
	{
		String sql = "SELECT 2 FROM " + TableName 
		+ " WHERE " + TableName + "_ID=" + Record_ID
		+ " AND DocStatus='" + DocStatus + "'";
		int result = DB.getSQLValue(null, sql);
		return result == 2;
	}	//	checkStatusChange


	/**
	 *	Number of options available (to decide to display it)
	 *  @return item count
	 */
	public int getNumberOfOptions()
	{
		return fieldDocAction.listBoxVO.getOptions().size();
	}	//	getNumberOfOptions

	/**
	 *	Should the process be started in batch?
	 *  @return batch
	 */
	/*	public boolean isBatch()
	{
		return m_batch;
	}	//	IsBatch
	 */
	/**
	 *	Fill Vector with DocAction Ref_List(135) values
	 */
	private void readReference()
	{
		String sql;
		if (Env.isBaseLanguage(serverCtx, "AD_Ref_List"))
			sql = "SELECT Value, Name, Description FROM AD_Ref_List "
				+ "WHERE AD_Reference_ID=135 ORDER BY Name";
		else
			sql = "SELECT l.Value, t.Name, t.Description "
				+ "FROM AD_Ref_List l, AD_Ref_List_Trl t "
				+ "WHERE l.AD_Ref_List_ID=t.AD_Ref_List_ID"
				+ " AND t.AD_Language='" + Env.getAD_Language(serverCtx) + "'"
				+ " AND l.AD_Reference_ID=135 ORDER BY t.Name";

		ArrayList<String> v_value = new ArrayList<String>();
		ArrayList<String> v_name = new ArrayList<String>();
		ArrayList<String> v_description = new ArrayList<String>();
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			ResultSet rs = pstmt.executeQuery();
			try {
			while (rs.next())
			{
				String value = rs.getString(1);
				String name = rs.getString(2);
				String description = rs.getString(3);
				if (description == null)
					description = "";
				//
				v_value.add(value);
				v_name.add(name);
				v_description.add(description);
			}
			}
			finally {
			rs.close();
			}
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}

		//	convert to arrays
		int size = v_value.size();
		s_value = new String[size];
		s_name = new String[size];
		s_description = new String[size];
		for (int i = 0; i < size; i++)
		{
			s_value[i] = v_value.get(i);
			s_name[i] = v_name.get(i);
			s_description[i] = v_description.get(i);
		}
	}	//	readReference


	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}
}
