package com.audaxis.compiere.eurocenter.acct.datasource.vo;

import java.math.BigDecimal;
import java.util.Map;

public interface AcctVO 
{
	public Object getValue(String key);
	public String getValueAsString(String key);
	public BigDecimal getValueAsBigDecimal(String key);
	public boolean getValueAsBoolean(String key);
	public int getValueAsInt(String key);
	public void addValue(String key, Object value);
	public String [] getColumnNames();
	public void addChild(AcctVO vo);
	public void setGroupBy1(String columnName);
	public Map<String, Object> getAll();

}
