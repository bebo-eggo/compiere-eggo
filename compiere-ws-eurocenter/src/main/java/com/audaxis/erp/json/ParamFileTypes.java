package com.audaxis.erp.json;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonProperty;


public class ParamFileTypes  extends Base<ParamFileTypes> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String getID() {

		String ret=getFilesTypes().toString();
		return ret;
	}
	@JsonProperty("paramFiles")
	public ArrayList<FileType> filesTypes;
	public ArrayList<FileType> getFilesTypes() {
		return filesTypes;
	}
	public void setFilesTypes(ArrayList<FileType> filesTypes) {
		this.filesTypes = filesTypes;
	}

}

