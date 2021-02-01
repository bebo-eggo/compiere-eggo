package com.audaxis.compiere.sync.proxy;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.MOrderPaymSchedule;

import com.audaxis.compiere.model.BasicProxy;

public class MOrderPaymScheduleProxy extends BasicProxy<MOrderPaymSchedule> { //#73866

	MOrderPaymSchedule po;
	public MOrderPaymScheduleProxy(MOrderPaymSchedule po) {
		super(po);
		this.po=po;
		// TODO Auto-generated constructor stub
	}
	/**
	 * 
	 * @param PROM_BPartner_ID
	 */
	    public void setPROM_BPartner_ID (int PROM_BPartner_ID) {
	        if (PROM_BPartner_ID <= 0)
	        	 po.set_Value ("PROM_BPartner_ID", null);
	        else
	        po.set_Value ("PROM_BPartner_ID", Integer.valueOf(PROM_BPartner_ID));
	        
	    }
	    /**
	     * 
	     * @return PROM_BPartner_ID
	     */
	    public int getPROM_BPartner_ID() {
	        return getPO().get_ValueAsInt("PROM_BPartner_ID");
	    }
	    
	    /**
	     * 
	     * @param PROM_BPartner_Location_ID
	     */
	    public void setPROM_BPartner_Location_ID (int PROM_BPartner_Location_ID) {
	        if (PROM_BPartner_Location_ID <= 0)
	        	 po.set_Value ("PROM_BPartner_Location_ID", null);
	        else
	        po.set_Value ("PROM_BPartner_Location_ID", Integer.valueOf(PROM_BPartner_Location_ID));
	        
	    }
	    /**
	     * 
	     * @return PROM_BPartner_Location_ID
	     */
	    public int getPROM_BPartner_Location_ID() {
	        return po.get_ValueAsInt("PROM_BPartner_Location_ID");
	    }
	    /**
	     * 
	     * @param PROM_Amount
	     */
	    public void setPROM_Amount (BigDecimal PROM_Amount)
	    {
	    	po.set_Value("PROM_Amount", PROM_Amount);
	    }
	    /**
	     * 
	     * @return PROM_Amount
	     */
	    public BigDecimal getPROM_Amount()
	    {
	    	return po.get_ValueAsBigDecimal("PROM_Amount");
	    }
	    /**
	     * 
	     * @param PROM_Comments
	     */
	    public void setPROM_Comments (String PROM_Comments)
	    {
	    	po.set_Value("PROM_Comments", PROM_Comments);
	    }
	    /**
	     * 
	     * @return PROM_Comments
	     */
	    public String getPROM_Comments()
	    {
	    	return po.get_ValueAsString("PROM_Comments");
	    }
	    /**
	     * 
	     * @param PROM_INV_ID
	     */
	    public void setPROM_INV_ID (int PROM_INV_ID)
	    {
	    	po.set_Value("PROM_INV_ID", Integer.valueOf(PROM_INV_ID));
	    }
	    /**
	     * 
	     * @return PROM_INV_ID
	     */
	    public int getPROM_INV_ID()
	    {
	    	return po.get_ValueAsInt("PROM_INV_ID");
	    }
	    /**
	     * 
	     * @param DueDate
	     */
	    public void setDueDate(Timestamp DueDate)
	    {
	    	po.set_Value("DueDate", DueDate);
	    }
	    /**
	     * 
	     * @return DueDate
	     */
	    public Timestamp getDueDate() 
	    {
	        return (Timestamp)po.get_Value("DueDate");
	        
	    }
}
