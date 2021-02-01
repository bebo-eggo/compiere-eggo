package com.audaxis.erp.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import org.compiere.util.DB;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.compiere.util.Util;
import com.audaxis.erp.json.FileType;
import com.audaxis.erp.json.ParamFileTypes;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class ParamFileTypeService extends CompiereSessionFullService implements IParamFileTypeService {

	@Override
	public ParamFileTypes getFileTypes(int ad_client_id) {
		ParamFileTypes paramFiles=new ParamFileTypes();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sqlBuff=new StringBuffer("select * from (Select 1 as xx_Ispp ,z_FileType, ad_client_id from XX_PARAMFILETYPE WHERE xx_ISPP in (1,3) " + 
				"union " + 
				"Select 2 as xx_Ispp ,z_FileType, ad_client_id from XX_PARAMFILETYPE WHERE xx_ISPP in (2,3))" + 
				"where ad_client_id=? order by xx_ISPP asc"
				+ "  ");
		try
		{
			pstmt = DB.prepareStatement (sqlBuff.toString(), null);
            pstmt.setInt(1,ad_client_id);
			rs = pstmt.executeQuery ();
			int lasttype=-1;
			ArrayList<String> listOfType=new ArrayList<>();
			ArrayList<FileType> listfileType=new ArrayList<>();
			FileType fileType=new FileType();
			while (rs.next ()) {

				if(rs.getInt("xx_Ispp")!=lasttype)
				{
						fileType.setFilesTypes(listOfType);	
						listfileType.add(fileType);
						listOfType=new ArrayList<>();
						fileType=new FileType();
						fileType.setType(rs.getInt("xx_Ispp"));
					
				}

				listOfType.add(rs.getString("z_FileType"));
				lasttype=rs.getInt("xx_Ispp");

			}
			fileType.setFilesTypes(listOfType);	
			listfileType.add(fileType);
			for (int i = 0; i < listfileType.size(); i++) {
				if(listfileType.get(i).getFilesTypes().size()==0) {
					listfileType.remove(i);
					i--;
				}
			}
			paramFiles.setFilesTypes(listfileType);
			

		}
		catch (Exception e) {
			log.severe(sqlBuff.toString());

		}
		finally {
			Util.closeCursor(pstmt, rs);
		
		}
		return paramFiles;

	} 

	@Override
	public ParamFileTypes getFileTypesByType(int type,int ad_client_id) {
		ParamFileTypes paramFiles=new ParamFileTypes();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sqlBuff=new StringBuffer("select * from (Select case when xx_Ispp in (1,3) then 1 when xx_Ispp in (2,3) then 2 end as xx_Ispp , "
				+ "z_FileType from XX_PARAMFILETYPE) WHERE xx_Ispp =? and ad_client_id= ? ");
		
		try
		{
			pstmt = DB.prepareStatement (sqlBuff.toString(), null);
			pstmt.setInt(1, type);
			pstmt.setInt(2, ad_client_id);
			rs = pstmt.executeQuery ();
			ArrayList<String> listOfType=new ArrayList<>();
			ArrayList<FileType> listfileType=new ArrayList<>();
			FileType fileType=new FileType();				
			while (rs.next ()) {
			
				listOfType.add(rs.getString("z_FileType"));			

			}
			fileType.setType(type);
			fileType.setFilesTypes(listOfType);
			listfileType.add(fileType);
			paramFiles.setFilesTypes(listfileType);

		}
		catch (Exception e) {
			log.severe(sqlBuff.toString());

		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
		return paramFiles;
	} 


	
}