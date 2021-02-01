package com.audaxis.compiere.eurocenter.process;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

import org.compiere.model.X_XX_BPARTNER_GROUP;
import org.compiere.model.X_XX_BPARTNER_GROUP_L;
import org.compiere.util.DB;

import com.audaxis.compiere.process.SvrProcessExtended;

public class LoadTiersToGroup extends SvrProcessExtended {

	private int p_Client_ID = 0;
	private X_XX_BPARTNER_GROUP hdr = null;	
	private File fileToLoad =null;
	private boolean ok = false;

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		p_Client_ID = getParameterAsInt("AD_Client_ID");
		hdr = new X_XX_BPARTNER_GROUP(getCtx(), getRecord_ID(), get_Trx());
		String p_FileName = getParameterAsString("FileName");
		fileToLoad = new File(p_FileName);
		if(!fileToLoad.exists()){
			hdr.setDescription2("Le fichier "+p_FileName+" n'existe pas");
			hdr.save();
		}else{
			ok = true;
			hdr.setFileName(fileToLoad.getName());
			hdr.save();
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		if(!ok)
			return "Processus en erreur, voir la description";
		BufferedReader in = null;
		int noLine = 0;
		try
		{
			in = new BufferedReader(new FileReader(fileToLoad));
			String line = null;
			
			while ((line = in.readLine()) != null){
				if(noLine !=0) {// FOR HEADER ONLY
					String ss[] = line.split(";");
				if(ss!=null)
				{
					X_XX_BPARTNER_GROUP_L l = new X_XX_BPARTNER_GROUP_L(getCtx(), 0, get_Trx());
					l.setXX_BPARTNER_GROUP_ID(hdr.getXX_BPARTNER_GROUP_ID());
					l.setBPartnerValue(ss[0]);
					l.setGroupValue(ss[1]);
					l.save();
				}
				}
				noLine++;
			}
		
		}
		catch (Exception e)	{
			hdr.setDescription2("Erreur lors du chargement du fichier");
			hdr.save();
		}finally {
			if(in != null) {
				in.close();
			}
		}
		if(noLine>0)
		{
			hdr.setDescription2("Nombre de lignes chargées : "+(noLine-1));
		
			int nbUpTiers = DB.executeUpdate("UPDATE XX_BPARTNER_GROUP_L set C_BPartner_ID = (select C_BPartner_ID from C_BPartner "
					+ "where C_BPartner.Value = XX_BPARTNER_GROUP_L.BPartnerValue and C_BPartner.AD_CLIENT_ID = XX_BPARTNER_GROUP_L.AD_CLIENT_ID) "
					+ "where C_BPartner_ID is null and BPartnerValue is not null and XX_BPARTNER_GROUP_ID = ?",hdr.getXX_BPARTNER_GROUP_ID(), get_Trx());
			hdr.setDescription2("Nombre de Tiers trouvés : "+(nbUpTiers));
			int nbUpGTiers = DB.executeUpdate("UPDATE XX_BPARTNER_GROUP_L set C_BP_Group_ID = (select C_BP_Group_ID from C_BP_Group "
					+ "where C_BP_Group.Value = XX_BPARTNER_GROUP_L.GroupValue and C_BP_Group.AD_CLIENT_ID = XX_BPARTNER_GROUP_L.AD_CLIENT_ID) "
					+ "where C_BP_Group_ID is null and GroupValue is not null and XX_BPARTNER_GROUP_ID = ?",hdr.getXX_BPARTNER_GROUP_ID(), get_Trx());
			hdr.setDescription2("Nombre de Groupes de Tiers trouvés : "+(nbUpGTiers));
			DB.executeUpdate("UPDATE XX_BPARTNER_GROUP_L set IsValid = 'Y' "
					+ "where C_BP_Group_ID is not null and C_BPartner_ID is not null and XX_BPARTNER_GROUP_ID = ? ",hdr.getXX_BPARTNER_GROUP_ID(), get_Trx());
			if((noLine-1)>nbUpTiers)
				hdr.setDescription2("!!!! Attention, Tous les tiers ne sont pas trouvés");
			if((noLine-1)>nbUpGTiers)
				hdr.setDescription2("!!!! Attention, Tous les groupes de tiers ne sont pas trouvés");
			hdr.save();
		}
			return "Chargement et identification terminés";
	}

}
