package com.audaxis.compiere.eurocenter.acct.exporter.interfaces;

import java.io.File;
import java.util.Map;

import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.AcctDatasource;

public interface AcctExporter 
{
	public void buildOutputFile(AcctDatasource ds, File template, String filename, Map<String, Object> params) throws Exception;
}
