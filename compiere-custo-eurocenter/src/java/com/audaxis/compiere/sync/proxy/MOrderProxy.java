package com.audaxis.compiere.sync.proxy;


import org.compiere.model.MOrder;

import com.audaxis.compiere.model.BasicProxy;

public class MOrderProxy extends BasicProxy<MOrder> {

	public MOrderProxy(MOrder po) {
		super(po);
		// TODO Auto-generated constructor stub
	} 
	
	  public void setMonteur_ID (int Monteur_ID) {
	        if (Monteur_ID <= 0)
	        	 getPO().set_Value ("Monteur_ID", null);
	        else
	        getPO().set_Value ("Monteur_ID", Integer.valueOf(Monteur_ID));
	        
	    }
	    
	    public int getMonteur_ID() {
	        return getPO().get_ValueAsInt("Monteur_ID");
	    }
	/**
	 * 
	 * @param PROM_BPartner_ID
	 */
	    //#73866
	    public void setPROM_BPartner_ID (int PROM_BPartner_ID) {
	        if (PROM_BPartner_ID <= 0)
	        	 getPO().set_Value ("PROM_BPartner_ID", null);
	        else
	        getPO().set_Value ("PROM_BPartner_ID", Integer.valueOf(PROM_BPartner_ID));
	        
	    }
	    /**
	     * 
	     * @return PROM_BPartner_ID
	     */
	    //#73866
	    public int getPROM_BPartner_ID() {
	        return getPO().get_ValueAsInt("PROM_BPartner_ID");
	    }
	

}
