/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.report.core;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MRole;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;

import com.audaxis.compiere.util.CompiereException;

/**
 *  Report Model Data - ValueObject.
 *  - Build SQL from RColumn info and Retrieve Data
 *  - owned by RModel
 *
 *  @author Jorg Janke
 *  @version  $Id: RModelData.java,v 1.2 2006/07/30 00:51:06 jjanke Exp $
 */
public //ZCOM999
class RModelData
{
	/**
	 *  Constructor. Use query method to populate data
	 *  @param TableName
	 */
	public RModelData (String TableName)
	{
		m_TableName = TableName;
	}   //  RModelData

	/** The Rows                        */
	public ArrayList<ArrayList<Object>> 	rows = new ArrayList<ArrayList<Object>>();
	/** The temporary Rows              */
	private ArrayList<ArrayList<Object>>	m_rows = new ArrayList<ArrayList<Object>>();

	/** The Row MetaData                */
	public ArrayList<Object>	rowsMeta = new ArrayList<Object>();
	/** The Column Definitions          */
	public ArrayList<RColumn>	cols = new ArrayList<RColumn>();


	/** Table Name                      */
	private String          m_TableName;

	/** Functions (Integer - String)    */
	public HashMap<Integer,String>	functions = new HashMap<Integer,String>();
	/** Groups (Integer)                */
	public ArrayList<Integer>		groups = new ArrayList<Integer>();

	/** Array with row numbers that are groups  */
	private ArrayList<Integer>		m_groupRows = new ArrayList<Integer>();
	private ArrayList<Boolean>  	m_groupRowsIndicator = null;

	/** Constant 1                      */
	private static final BigDecimal     ONE = new BigDecimal(1.0);

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(RModelData.class);
	
	/**
	 *  Dispose
	 */
	public void dispose()
	{
		rows.clear();
		m_rows.clear();
		rowsMeta.clear();
		cols.clear();
	}   //  dispose

	/**************************************************************************
	 *  Query
	 *  @param ctx
	 *  @param  whereClause the SQL where clause (w/o the WHERE)
	 *  @param  orderClause
	 */
	public void query (Ctx ctx, String whereClause, String orderClause		, List<Object> params 
			// ZCOM999 - #56770 Lettrage des comptes g�n�raux
			)
	{
		RColumn rc = null;
		//  Create SQL
		StringBuffer sql = new StringBuffer ("SELECT ");
		int size = cols.size();
		for (int i = 0; i < size; i++)
		{
			rc = cols.get(i);
			if (i > 0)
				sql.append(",");
		    if(rc.getColSQL().startsWith("(")) //Redmine14936-19595 start
			    sql.append(rc.getColSQL()); //REDMINE 18565
			else
			    sql.append(RModel.TABLE_ALIAS).append(".").append(rc.getColSQL()); //REDMINE 18565 
		//Redmine14936-19595 end
		}
		sql.append(" FROM ").append(m_TableName).append(" ").append(RModel.TABLE_ALIAS);
		//Redmine14936-19595
		if(m_TableName.equalsIgnoreCase("Fact_Acct"))//REDMINE 18565 
		 {	sql.append(" INNER JOIN C_ElementValue ev on (ev.C_ElementValue_id=zz.Account_ID)");
		 // CGU : 21/08/2013
		 sql.append(" LEFT JOIN C_ElementValue evcentre on (evcentre.C_ElementValue_id=zz.User1_ID)");		 //
		 
			     if (orderClause != null && !orderClause.equalsIgnoreCase("zz.Fact_Acct_ID"))
			        {
			        	String  tab []= orderClause.split(",");
			        	 String tmpOrdClause = "";
						 for (int i = 0; i < tab.length; i++) 
						 {	 
						    if(tab[i].equals("zz.AD_Org_ID")){
								sql.append(" LEFT OUTER JOIN AD_Org org on (org.AD_Org_ID=zz.AD_Org_ID)");
								tmpOrdClause += " org.value,";
							}else if(tab[i].equals("zz.Account_ID")){
								tmpOrdClause += " ev.value,";		
							}else if(tab[i].equals("zz.User2_ID")){
								sql.append(" LEFT OUTER JOIN C_ElementValue evmarch on (evmarch.C_ElementValue_id=zz.User2_ID)");
								tmpOrdClause += " evmarch.value,";		
							}else if(tab[i].equals("zz.C_Project_ID")){
								sql.append(" LEFT OUTER JOIN C_Project prj on (prj.C_Project_ID=zz.C_Project_ID)");
								tmpOrdClause += " prj.value,";
							}else if(tab[i].equals("zz.C_SalesRegion_ID")){
								sql.append(" LEFT OUTER JOIN C_SalesRegion sr on (sr.C_SalesRegion_ID=zz.C_SalesRegion_ID)");
								tmpOrdClause += " sr.value,";
							}else if(tab[i].equals("zz.M_Product_ID")){
								sql.append(" LEFT OUTER JOIN M_Product prd on (prd.M_Product_ID=zz.M_Product_ID)");
								tmpOrdClause += " prd.value,";
							}else if(tab[i].equals("zz.C_BPartner_ID")){
								sql.append(" LEFT OUTER JOIN C_BPartner bp on (bp.C_BPartner_ID=zz.C_BPartner_ID)");
								tmpOrdClause += " bp.value,";
							}else if(tab[i].equals("zz.AD_OrgTrx_ID")){
									sql.append(" LEFT OUTER JOIN AD_Org orgtrx on (orgtrx.AD_Org_ID=zz.AD_OrgTrx_ID)");
									tmpOrdClause += " orgtrx.value,";
							}else if(tab[i].equals("zz.User1_ID")){
						        sql.append(" LEFT OUTER JOIN C_ElementValue evctr on (evctr.C_ElementValue_id=zz.User1_ID)");
								tmpOrdClause += " evctr.value,";		
							}else if(tab[i].equals("zz.C_Campaign_ID")){
								sql.append(" LEFT OUTER JOIN C_Campaign cmp on (cmp.C_Campaign_ID=zz.C_Campaign_ID)");
								tmpOrdClause += " cmp.value,";

							//Anomalie #39079 Anomalie Vue compte en affichage global combinant Période et Pays
							}else if(tab[i].equals("zz.C_Period_ID")){
							sql.append(" LEFT OUTER JOIN C_PERIOD cperiode on (cperiode.C_Period_ID=zz.C_Period_ID)");
							tmpOrdClause += " cperiode.StartDate,";
							}else
								tmpOrdClause +=tab[i]+",";
					    	//Anomalie #39079
						}
						 if (!tmpOrdClause.equals(""))//Redmine 24983, erreur indexoutofbound
							 orderClause=tmpOrdClause.substring(0,tmpOrdClause.lastIndexOf(","));
			        }
			}/***End***Redmine 20561:permettre le tri sur leschamps "Value" au lieu des IDs***/
		 //Redmine14936-19595
		if (whereClause != null && whereClause.length() > 0)
			sql.append(" WHERE ").append(whereClause);
		String finalSQL = MRole.getDefault(ctx, false).addAccessSQL(
			sql.toString(), RModel.TABLE_ALIAS, MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);
		if (orderClause != null && orderClause.length() > 0)
			finalSQL += " ORDER BY " + orderClause;
		log.fine(finalSQL);

		//  FillData
		int index = 0;      //  rowset index
		m_rows.clear();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(finalSQL, null);
			if(params != null)
				for (int counter=1 ; counter<= params.size(); counter++)
					pstmt.setObject(counter, params.get(counter-1));
			rs = pstmt.executeQuery();							
			int rowNum = 0; //ZCOM872
			while (rs.next()
					&& rowNum < QueryUtil.MAX_ROWS) //ZCOM872
			{
				rowNum++; //ZCOM872
				ArrayList<Object> row = new ArrayList<Object>(size);
				index = 1;
				//  Columns
				for (int i = 0; i < size; i++)
				{
					rc = cols.get(i);
					//  Get ID
					if (rc.isIDcol())
						row.add(new KeyNamePair (rs.getInt(index++), rs.getString(index++)));
					//  Null check
					else if (rs.getObject(index) == null)
					{
						index++;
						row.add(null);
					}
					else if (rc.getColClass() == String.class)
						row.add(rs.getString(index++));
					else if (rc.getColClass() == BigDecimal.class)
						row.add(rs.getBigDecimal(index++));
					else if (rc.getColClass() == Double.class)
						row.add(new Double(rs.getDouble(index++)));
					else if (rc.getColClass() == Integer.class)
						row.add(Integer.valueOf(rs.getInt(index++)));
					else if (rc.getColClass() == Timestamp.class)
						row.add(rs.getTimestamp(index++));
					else if (rc.getColClass() == Boolean.class)
						row.add(Boolean.valueOf("Y".equals(rs.getString(index++))));
					else    //  should not happen
					{
						row.add(rs.getString(index++));
					}
				}
				m_rows.add(row);
			}
			if (rowNum == QueryUtil.MAX_ROWS) {
				throw new CompiereException((Msg.getMsg(ctx, "AUD_TooManyRow") != null) ? Msg.getMsg(ctx, "AUD_TooManyRow").replaceAll("5000", new Integer(QueryUtil.MAX_ROWS).toString()) : "TooManyRow");
			}
		}
		catch (SQLException e)
		{
			if (index == 0)
				log.log(Level.SEVERE, finalSQL, e);
			else
				log.log(Level.SEVERE, "Index=" + index + "," + rc, e);
			e.printStackTrace();
		} finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		process();
	}   //  query

	/**
	 *  Process Data
	 *  Copy data in m_rows to rows and perform functions
	 */
	private void process()
	{
		log.fine("Start Rows=" + m_rows.size());

		//  Row level Funcions
		//  would come here

		//  Group by Values
		int gSize = groups.size();
		int[] groupBys = new int[gSize];
		Object[] groupBysValue = new Object[gSize];
		Object INITVALUE = new Object();
		for (int i = 0; i < gSize; i++)
		{
			groupBys[i] = (groups.get(i)).intValue();
			groupBysValue[i] = INITVALUE;
			log.fine("GroupBy level=" + i + " col=" + groupBys[i]);
		}
		//  Add additional row to force group change
		if (gSize > 0)
		{
			ArrayList<Object> newRow = new ArrayList<Object>();
			for (int c = 0; c < cols.size(); c++)
				newRow.add("");
			m_rows.add(newRow);
		}

		//  Function Values - Function - GroupValue
		int fSize = functions.size();
		int[] funcCols = new int[fSize];
		String[] funcFuns = new String[fSize];
		int index = 0;
		Iterator<Integer> it = functions.keySet().iterator();
		while (it.hasNext())
		{
			Integer key = it.next();
			funcCols[index] = key.intValue();
			funcFuns[index] = functions.get(key);
			log.fine("Function " + funcFuns[index] + " col=" + funcCols[index]);
			index++;
		}
		BigDecimal[][] funcVals = new BigDecimal [fSize][gSize+1];
		int totalIndex = gSize;  //  place for overall total
		log.fine("FunctionValues = [ " + fSize + " * " + (gSize+1) + " ]");
		for (int f = 0; f < fSize; f++)
			for (int g = 0; g < gSize+1; g++)
				funcVals[f][g] = Env.ZERO;

		rows.clear();
		//  Copy m_rows into rows
		for (int r = 0; r < m_rows.size(); r++)
		{
			ArrayList<Object> row = m_rows.get(r);
			//  do we have a group break
			boolean[] haveBreak = new boolean[groupBys.length];
			for (int level = 0; level < groupBys.length; level ++)
			{
				int idx = groupBys[level];
				if (groupBysValue[level] == INITVALUE)
					haveBreak[level] = false;
				else if (!groupBysValue[level].equals(row.get(idx)))
					haveBreak[level] = true;
				else
					haveBreak[level] = false;
				//  previous level had a break
				if (level > 0 && haveBreak[level-1])
					haveBreak[level] = true;
			}
			//  create group levels - reverse order
			for (int level = groupBys.length-1; level >= 0; level--)
			{
				int idx = groupBys[level];
				if (groupBysValue[level] == INITVALUE)
					groupBysValue[level] = row.get(idx);
				else if (haveBreak[level])
				{
				//	log.fine( "GroupBy Change level=" + level + " col=" + idx + " - " + groupBysValue[level]);
					//  create new row
					ArrayList<Object> newRow = new ArrayList<Object>();
					for (int c = 0; c < cols.size(); c++)
					{
						if (c == idx)   //  the group column
						{
							if (groupBysValue[c] == null || groupBysValue[c].toString().length() == 0)
								newRow.add("=");
							else
								newRow.add(groupBysValue[c]);
						}
						else
						{
							boolean found = false;
							for (int fc = 0; fc < funcCols.length; fc++)
							{
								if (c == funcCols[fc])
								{
								//	newRow.add("fc= " + fc + " gl=" + level + " " + funcFuns[fc]);
									newRow.add(funcVals[fc][level]);
									funcVals[fc][level] = Env.ZERO;
									found = true;
								}
							}
							if (!found)
								newRow.add(null);
						}
					}   //  for all columns
					//
					m_groupRows.add(Integer.valueOf(rows.size())); //  group row indicator
					rows.add(newRow);
					groupBysValue[level] = row.get(idx);
				}
			}   //  for all groups

			//	functions
			for (int fc = 0; fc < funcCols.length; fc++)
			{
				int col = funcCols[fc];
				//  convert value to big decimal
				Object value = row.get(col);
				BigDecimal bd = Env.ZERO;
				if (value == null)
					;
				else if (value instanceof BigDecimal)
					bd = (BigDecimal)value;
				else
				{
					try {
						bd = new BigDecimal(value.toString());
					} catch (Exception e) { }
				}

				for (int level = 0; level < gSize+1; level++)
				{
					if (funcFuns[fc].equals(RModel.FUNCTION_SUM))
						funcVals[fc][level] = funcVals[fc][level].add(bd);
					else if (funcFuns[fc].equals(RModel.FUNCTION_COUNT))
						funcVals[fc][level] = funcVals[fc][level].add(ONE);
				}   //  for all group levels
			}   //  for all functions

			rows.add(row);
		}   //  for all m_rows

		//  total row
		if (functions.size() > 0)
		{
			ArrayList<Object> newRow = new ArrayList<Object>();
			for (int c = 0; c < cols.size(); c++)
			{
				boolean found = false;
				for (int fc = 0; fc < funcCols.length; fc++)
				{
					if (c == funcCols[fc])
					{
						newRow.add(funcVals[fc][totalIndex]);
						found = true;
					}
				}
				if (!found)
					newRow.add(null);
			}   //  for all columns
			//  remove empty row added earlier to force group change
			if (gSize > 0)
				rows.remove(rows.size()-1);
			m_groupRows.add(Integer.valueOf(rows.size())); //  group row indicator
			rows.add(newRow);
		}
		log.fine("End Rows=" + rows.size());
		m_rows.clear();
	}   //  process

	
	/**************************************************************************
	 *  Is Row a Group Row
	 *  @param row row index
	 *  @return true, if group row
	 */
	public boolean isGroupRow (int row)
	{
		//  build boolean Array
		if (m_groupRowsIndicator == null)
		{
			m_groupRowsIndicator = new ArrayList<Boolean>(rows.size());
			for (int r = 0; r < rows.size(); r++)
				m_groupRowsIndicator.add(Boolean.valueOf(m_groupRows.contains(Integer.valueOf(r))));
		}
		if (row < 0 || row >= m_groupRowsIndicator.size())
			return false;
		return (m_groupRowsIndicator.get(row)).booleanValue();
	}   // isGroupRow

	/**
	 *  Move Row
	 *  @param from index
	 *  @param to index
	 *  @throws IllegalArgumentException if row index is invalid
	 */
	public void moveRow (int from, int to)
	{
		if (from < 0 || to >= rows.size())
			throw new IllegalArgumentException("Row from invalid");
		if (to < 0 || to >= rows.size())
			throw new IllegalArgumentException("Row to invalid");
		//  Move Data
		ArrayList<Object> temp = rows.get(from);
		rows.remove(from);
		rows.add(to, temp);
		//  Move Description indicator >>> m_groupRows is not in sync after row move !!
		if (m_groupRowsIndicator != null)
		{
			Boolean tempB = m_groupRowsIndicator.get(from);
			m_groupRowsIndicator.remove(from);
			m_groupRowsIndicator.add(to, tempB);
		}
	}   //  moveRow
      
	
	/***19599-14936***/
/**
	 *   GetGroupIndexs  
     *   @return indexs of group row
	 */

	public int[] getGroupIndexs ()
	{   
		int [] tab=new int[m_groupRows.size()];
		for (int i = 0; i < m_groupRows.size(); i++) {
		    int  index=m_groupRows.get(i).intValue();
		    tab[i]=index;
		}
		return tab;
	}   
	
	/**
	 * Remove Rows
	 * @param tab
	 */
	public void removeRows (int [] tab)
	{
		ArrayList<ArrayList<Object>> 	t_rows = new ArrayList<ArrayList<Object>>();
		for (int j = 0; j < tab.length; j++) {
			t_rows.add(rows.get(tab[j]));
	       }
		rows=t_rows;
	}   //  removeRows
   /***19599-14936***/
	
	public String getTableName()
	{
		return m_TableName;
	}

}   //  RModelData
