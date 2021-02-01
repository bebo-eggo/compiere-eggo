package com.audaxis.compiere.eurocenter.acct.datasource.interfaces;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRField;

import org.compiere.print.JRDataLine;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctElementVO;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctVO;
import com.audaxis.compiere.util.CompiereException;

public abstract class AcctDatasource implements XLSAcctDatasource, JRDataSource {

	protected static CLogger log = CLogger.getCLogger(AcctDatasource.class);

	protected Ctx ctx;
	protected Trx trx;

	protected Map<String, Object> params;
	
	private ArrayList<JRDataLine> pdfDS = null;
	private int row = -1;
	
	private AcctVO header = null;
	private ArrayList<AcctVO> lines = null;
	private AcctVO footer = null;
	
	public AcctDatasource() 
	{
		this(null, null, new HashMap<String, Object>());
	}

	public AcctDatasource(Ctx ctx, Trx trx, Map<String, Object> params) {
		log.info("");
		this.ctx = ctx;
		this.trx = trx;
		this.params = new TreeMap<String, Object>(String.CASE_INSENSITIVE_ORDER);
		this.params.putAll(params);
	}


	
	private ArrayList<JRDataLine> getPDFDatasource() 
	{
		ArrayList<JRDataLine> retValue = new ArrayList<JRDataLine>();
		
		for (int i = 0; i < getLinesCached().size(); i++) 
		{
			JRDataLine data = new JRDataLine();
			if (getHeaderCached() != null)
				data.putAll(getHeaderCached().getAll());
			data.putAll(getLinesCached().get(i).getAll());
			if (getFooterCached() != null)
				data.putAll(getFooterCached().getAll());
			retValue.add(data);
		}
		return retValue;
	}
	@Override
	public Map<String, Object> getXLSDatasource() {
		HashMap<String, Object> m = new HashMap<String, Object>();
		AcctVO ds = new AcctElementVO();
		ds.addValue("HEADER", getHeaderCached());
		
		AcctVO vos = new AcctElementVO();
		for (int i=0; i<getLinesCached().size();i++)
			vos.addChild(getLinesCached().get(i));
		ds.addValue("LINES", vos);

		ds.addValue("FOOTER", getFooterCached());

		m.put("ds", ds);
		return m;
	}

	protected ArrayList<AcctVO> getLines()
	{

		lines = new ArrayList<AcctVO>(); 

		PreparedStatement ps = null;
		ResultSet rs = null;

		try 
		{
			ps = DB.prepareStatement(getSql(), null);
			for (int i=0; i<getParamNames().length; i++)
			{
//				Object o = params.get(PartnerGLJournalSql.paramNames[i]);
//				if (o == null)
//					ps.setNull(i+1, java.sql.Types.JAVA_OBJECT);
//				else
//					ps.setObject(i+1, o);
//				ps.setObject(i+1, o);
				ps.setObject(i+1, params.get(getParamNames()[i]));
			}
			rs = ps.executeQuery();
			ResultSetMetaData md = rs.getMetaData();
			while (rs.next())
			{
				AcctVO record = new AcctElementVO();
				for (int j=1; j <= md.getColumnCount() ;j++)
				{
					record.addValue(md.getColumnLabel(j), rs.getObject(j));
				}
				computeLine(record);
				lines.add(record);
			}
			computeAllLines(lines);
			
		}
		catch (SQLException se)
		{
			lines = new ArrayList<AcctVO>();
			throw new CompiereException("SQL Failed " + getSql(), se);
		}
		finally
		{
			Util.closeCursor(ps, rs);
		}
		return lines;
	}

	@Override
	public Object getFieldValue(JRField jRField) throws JRException {
		if (pdfDS == null)
			pdfDS = getPDFDatasource();
		Object ret = null;
		if (jRField != null) 
			ret = pdfDS.get(row).get(jRField.getName());
		return ret;
	}

	@Override
	public boolean next() throws JRException {
		if (pdfDS == null)
			pdfDS = getPDFDatasource();
		try {
			row++;
			if (row < pdfDS.size())
				return true;
		} catch (Exception ex) { 
			
		}
		return false;
	}

	private AcctVO getHeaderCached()
	{
		if (header != null)
			return header;
		header = getHeader();
		return header;
	}
	private ArrayList<AcctVO> getLinesCached()
	{
		getHeaderCached();
		if (lines != null)
			return lines;
		lines = getLines();
		return lines;
	}
	private AcctVO getFooterCached()
	{
		if (footer != null)
			return footer;
		footer=getFooter(getHeaderCached(), getLinesCached());
		return footer;
	}

	
	protected abstract AcctVO getHeader();
	protected abstract void computeLine(AcctVO vo);
	protected abstract void computeAllLines(ArrayList<AcctVO> lines);
	protected abstract String getSql();
	protected abstract String [] getParamNames();
	
	// override me if you need me
	protected AcctVO getFooter(AcctVO header, ArrayList<AcctVO> lines) { return null;}
}
