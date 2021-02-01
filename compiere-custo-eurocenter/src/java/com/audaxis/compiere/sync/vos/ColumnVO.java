package com.audaxis.compiere.sync.vos;

import java.io.Serializable;

public class ColumnVO implements Serializable {

	public ColumnVO(String columnName,int columnType) {
		this.columnName = columnName;
		this.columnType=columnType;
	}

	public String columnName;
	public int columnType;

}
