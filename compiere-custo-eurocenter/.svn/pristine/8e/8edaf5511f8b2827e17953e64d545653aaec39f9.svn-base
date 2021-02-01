package com.audaxis.compiere.sync.vos;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public class TableVO implements Serializable {
	
	public ArrayList<ColumnVO> columns = new ArrayList<ColumnVO>();
	public ArrayList<ColumnVO> keys = new ArrayList<ColumnVO>();
	public ArrayList<ColumnVO> parentKeys = new ArrayList<ColumnVO>();
	
	public String TableName;
	public boolean isDelSynch;

	public String getColumnsCommaSeparated() {
		String ret = "";
		int cnt = 0;
		for (Iterator<ColumnVO> iterator = columns.iterator(); iterator.hasNext();) {
			cnt++;
			ColumnVO col = iterator.next();
			ret += col.columnName;
			if (cnt < columns.size())
				ret += ", ";
		}
		return ret;
	}
	
	public String getColumnsCommaSeparatedWithQuestionMark() {
		String ret = "";
		int cnt = 0;
		for (Iterator<ColumnVO> iterator = columns.iterator(); iterator.hasNext();) {
			cnt++;
			ColumnVO col = iterator.next();
			ret += col.columnName+"=? ";
			if (cnt < columns.size())
				ret += ", ";
		}
		return ret;
	}
	
	public String getQuestionsMarksForInsert(){
		String ret = "";
		int cnt = 0;
		for (Iterator<ColumnVO> iterator = columns.iterator(); iterator.hasNext();) {
			cnt++;
			ColumnVO col = iterator.next();
			ret += "?";
			if (cnt < columns.size())
				ret += ", ";
		}
		return ret;
	}
	
	public ArrayList<ColumnVO> getColumns() {
		return columns;
	}
	
	
	public int getColNumber(){
		return columns.size();
	}
	
	public void addColumn(String columnName,int columnType) {
		columns.add(new ColumnVO(columnName,columnType));
	}

	public void addKey(String columnName,int columnType) {
		keys.add(new ColumnVO(columnName,columnType));
	}
	
	public void addParentKey(String columnName,int columnType) {
		parentKeys.add(new ColumnVO(columnName,columnType));
	}

	public ArrayList<ColumnVO> getColumnKey(){
		if (keys.size() > 0)
			return keys;
		else
			return parentKeys;
	}
	
	public String getColumnKeyWithQuestionMark(){
		StringBuffer wh = new StringBuffer();
		for (int i = 0; i < getColumnKey().size(); i++) {
			if (i < getColumnKey().size())
				wh.append(" AND ");
			wh.append(getColumnKey().get(i).columnName+"=?");
		}
		
		return wh.toString();
	}
	
	public String getWhereClauseForCompare(String magasinAlias, String centralAlias) {
		String ret = "";
		int cnt = 0;
		if (keys.size() > 0) {
			for (Iterator<ColumnVO> iterator = keys.iterator(); iterator.hasNext();) {
				cnt++;
				ColumnVO key = iterator.next();
				ret += centralAlias+"."+key.columnName+" = "+magasinAlias+"."+key.columnName;
				if (cnt < keys.size())
					ret +=  " AND ";
			}
		}
		else {
			for (Iterator<ColumnVO> iterator = parentKeys.iterator(); iterator.hasNext();) {
				cnt++;
				ColumnVO key = iterator.next();
				ret += centralAlias+"."+key.columnName+" = "+magasinAlias+"."+key.columnName;
				if (cnt < parentKeys.size())
					ret +=  " AND ";
			}
		}
		return ret;
	}
	
	public String getKeyList() {
		String ret = "";
		int cnt = 0;
		if (keys.size() > 0) {
			for (Iterator<ColumnVO> iterator = keys.iterator(); iterator.hasNext();) {
				cnt++;
				ColumnVO key = iterator.next();
				ret += key.columnName;
				if (cnt < keys.size())
					ret +=  " , ";
			}
		}
		else {
			for (Iterator<ColumnVO> iterator = parentKeys.iterator(); iterator.hasNext();) {
				cnt++;
				ColumnVO key = iterator.next();
				ret += key.columnName;
				if (cnt < parentKeys.size())
					ret +=  " , ";
			}
		}
		return ret;
	}
	
	public String getWhereClauseForDelete(ArrayList<ColumnVO> keys, ArrayList<Object> values) {
		String ret = "";
		int cnt = 0;
		if (keys.size() > 0) {
			for (Iterator<ColumnVO> iterator = keys.iterator(); iterator.hasNext();) {
				cnt++;
				ColumnVO key = iterator.next();
				ret += key.columnName+" = ";
				if (values.get(cnt-1) instanceof String)
					ret+="'";
				ret+=values.get(cnt-1);
				if (values.get(cnt-1) instanceof String)
					ret+="'";
				if (cnt < keys.size())
					ret +=  " AND ";
			}
		}
		return ret;
	}


	

}
