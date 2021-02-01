package org.compiere.model;

import java.sql.ResultSet;

import org.compiere.api.UICallout;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class MGreeting extends X_C_Greeting {

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		
		
		
		
		return super.beforeSave(newRecord);
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MGreeting(Ctx ctx, int C_Greeting_ID, Trx trx) {
		super(ctx, C_Greeting_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MGreeting(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public void setIsSoc(boolean IsSoc)
	{
		set_Value ("IsSoc", Boolean.valueOf(IsSoc));
	}

	public boolean isSoc() 
	{
	    return get_ValueAsBoolean("IsSoc");
	}
	
	public void setIsOnePers(boolean IsOnePers)
	{
		set_Value ("IsOnePers", Boolean.valueOf(IsOnePers));
	}

	public boolean isOnePers() 
	{
	    return get_ValueAsBoolean("IsOnePers");
	}
	
	public void setIs2Pers(boolean Is2Pers)
	{
		set_Value ("Is2Pers", Boolean.valueOf(Is2Pers));
	}

	public boolean is2Pers() 
	{
	    return get_ValueAsBoolean("Is2Pers");
	}
	
	@UICallout public void setIsSoc (String oldIsSoc,
			String newIsSoc, int windowNo) throws Exception			{
		if ((newIsSoc == null) || (newIsSoc.length() == 0))
			return;
		if(isSoc())
		{
			setIs2Pers(false);
			setIsOnePers(false);
		}
	}
	
	@UICallout public void setIs2Pers (String oldIs2Pers,
			String newIs2Pers, int windowNo) throws Exception			{
		if ((newIs2Pers == null) || (newIs2Pers.length() == 0))
			return;
		if(is2Pers())
		{
			setIsSoc(false);
			setIsOnePers(false);
		}
	}
	
	@UICallout public void setIsOnePers (String oldIsOnePers,
			String newIsOnePers, int windowNo) throws Exception			{
		if ((newIsOnePers == null) || (newIsOnePers.length() == 0))
			return;
		if(isOnePers())
		{
			setIsSoc(false);
			setIs2Pers(false);
		}
	}

}
