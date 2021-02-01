package com.audaxis.compiere.eurocenter.acct.datasource.vo;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AcctElementVO implements AcctVO 
{

	protected Map<String, Object> datas = new HashMap<String, Object>();
	protected List<AcctVO> childs = new ArrayList<AcctVO>();
	protected String groupBy1 = null;

	public Object getValue(String key)
	{
		return datas.get(key);
	}
	public String getValueAsString(String key)
	{
		return (String )datas.get(key);
	}
	public Timestamp getValueAsTimestamp(String key)
	{
		return (Timestamp)datas.get(key);
	}
	public BigDecimal getValueAsBigDecimal(String key)
	{
		return (BigDecimal)datas.get(key);
	}
	public boolean getValueAsBoolean(String key)
	{
		Object o = datas.get(key);
		if (o == null)
			return false;
		if (o instanceof Boolean)
			return ((Boolean)o);
		if (o instanceof String)
			return "Y".equalsIgnoreCase(o.toString());
		return false;
	}
	public int getValueAsInt(String key)
	{
		Object o = datas.get(key);
		if (o == null)
			return -1;
		return (Integer)o;
	}
	public void addValue(String key, Object value)
	{
		datas.put(key, value);
	}
	public String [] getColumnNames()
	{
		return datas.keySet().toArray(new String[datas.keySet().size()]);
	}
	public void addChild(AcctVO vo)
	{
		childs.add(vo);
	}
	public List<AcctVO> getChilds()
	{
		return childs;
	}
	public void setGroupBy1(String groupBy1)
	{
		this.groupBy1=groupBy1;
	}
	public Object getGroupBy1()
	{
		return datas.get(groupBy1);
	}
	public BigDecimal getAmtAcctDr()
	{
		return getValueAsBigDecimal("AmtAcctDr");
	}
	
	public Map<String, Object> getAll()
	{
		Map<String, Object> retValue = new HashMap<String, Object>();
		retValue.putAll(datas);
		if (childs != null)
		{
			for(int i=0; i<childs.size(); i++)
				retValue.putAll(childs.get(i).getAll());
		}
		return retValue;
	}
}
