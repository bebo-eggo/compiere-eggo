package com.audaxis.erp.json;
import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonProperty;
public class FileType extends Base<FileType> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@JsonProperty("type")
	public int type;


	@JsonProperty("fileTypeList")
	public ArrayList<String> filesTypes;





	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public ArrayList<String> getFilesTypes() {
		return filesTypes;
	}

	public void setFilesTypes(ArrayList<String> filesTypes) {
		this.filesTypes = filesTypes;
	}

	@Override
	public String getID() {

		String ret = type + "|" +filesTypes.toString();
		return ret;
	}
}
