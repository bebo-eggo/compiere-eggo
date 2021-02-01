/*REDMINE #24261*/
package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.framework.PO;
import org.compiere.model.MTree;
import org.compiere.model.MTreeNodeMM;
import org.compiere.model.MUser;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.sync.proxy.MUserProxy;

public class CopyCustomizeTable extends SvrProcess {

	private int p_AD_User_From_ID;
	private boolean applyToAll;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter param : para) {
			String name = param.getParameterName();
			if (name == null)
				;
			else if (name.equals("AD_User_From_ID"))
				p_AD_User_From_ID = param.getParameterAsInt();
			else if (name.equals("ApplyForAllUsers"))
				applyToAll = "Y".equalsIgnoreCase(String.valueOf(param.getParameter()));
			else
				log.log(Level.WARNING, "uknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {

		int count = 0;
		ArrayList<Integer> users = new ArrayList<Integer>();
		if (applyToAll)
			users = getUsersList();
		else
			users.add(getRecord_ID());
		MUserProxy usp = null;
		MUser from = new MUser(getCtx(), p_AD_User_From_ID, get_Trx());
		for (Integer ad_User_To_ID : users) {
			DB.executeUpdate("DELETE AD_User_Customization WHERE AD_User_ID = ?", ad_User_To_ID, get_Trx());
			MUser to = new MUser(getCtx(), ad_User_To_ID, get_Trx());
			usp = new MUserProxy(to);
			usp.copyCustomisations(getCtx(), get_Trx(), p_AD_User_From_ID, ad_User_To_ID, false);
			copyMenuFavorite(to, from.getAD_Tree_MenuFavorite_ID());
			count++;
		}
		return count + "@AD_User_ID@  @Updated@";
	}

	private void copyMenuFavorite(MUser to, int menuFavorite_ID) {

		MTree favFrom = new MTree(getCtx(), menuFavorite_ID, get_Trx());
		MTree favTo = new MTree(getCtx(), (to.getAD_Tree_MenuFavorite_ID() > 0 ? to.getAD_Tree_MenuFavorite_ID() : 0), get_Trx());
		PO.copyValues(favFrom, favTo);
		favTo.setAD_Client_ID(favFrom.getAD_Client_ID());
		favTo.setName(to.getName() + " : Favorite");
		favTo.setIsAllNodes(true);
		favTo.save();
		to.setAD_Tree_MenuFavorite_ID(favTo.get_ID());
		to.save();
		DB.executeUpdate("DELETE AD_TreeNodeMM WHERE AD_Tree_ID = ?", favTo.get_ID(), get_Trx());
		Object[][] nodeIDs = QueryUtil.executeQuery("SELECT AD_Menu_ID FROM AD_Menu WHERE AD_Menu_ID IN (SELECT Node_ID FROM AD_TreeNodeMM WHERE AD_Tree_ID = ?)", new Object[]{menuFavorite_ID}, get_Trx());
		for (Object[] nodeID : nodeIDs) {
			MTreeNodeMM node = new MTreeNodeMM(favTo, ((BigDecimal) nodeID[0]).intValue());
			node.save();
		}
	}

	public ArrayList<Integer> getUsersList() {

		ArrayList<Integer> list = new ArrayList<Integer>();
		Object[][] userIDs = QueryUtil.executeQuery("SELECT AD_User_ID FROM AD_User WHERE AD_User_ID NOT IN (0,100, ?) AND AD_Client_ID =?", new Object[]{p_AD_User_From_ID, getAD_Client_ID()}, get_Trx());
		for (Object[] userID : userIDs)
			list.add((Integer) ((BigDecimal) userID[0]).intValue());

		return list;
	}

}