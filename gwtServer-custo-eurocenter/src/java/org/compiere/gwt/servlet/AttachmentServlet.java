package org.compiere.gwt.servlet;

import java.io.*;
import java.sql.*;
import java.util.logging.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.compiere.common.constants.*;
import org.compiere.esb.*;
import org.compiere.gwt.server.*;
import org.compiere.impexp.*;
import org.compiere.model.*;
import org.compiere.util.*;

public class AttachmentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static final String UPLOAD_FILE = "upload";
	private static final String UPLOAD_FILE_TO_PROCESS = "uploadToProcess";  
	
	private static CLogger log = CLogger.getCLogger(AttachmentServlet.class);

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		GwtServer server = LoginServiceImpl.getGwtServer(request);
		if (server == null)
			return;

		Ctx ctx = server.getContext();

		String session_id = request.getSession().getId();
		int AD_Table_ID = -1;
		int Record_ID = -1;
		String param = null;

		String action = null;
		
		if ((action = request.getParameter("action")) == null)
			action = UPLOAD_FILE;
		
		FileUpload upload = new FileUpload(request);  
		String error = upload.getError();
		if (error != null) {
			if(error.equals(GlobalMessageConstants.FILE_SIZE_TOO_LARGE)){
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.print(GlobalMessageConstants.FILE_SIZE_TOO_LARGE);  
			}
			return;
		}
		
		if(action.equals(UPLOAD_FILE_TO_PROCESS)){   
			//Modifier ce processus pour ajouter un fichier quelque part !
			final StringBuffer file = new StringBuffer(System.getProperty("java.io.tmpdir"));
		     file.append(File.separator);     
		     file.append(ctx.get_ValueAsString("#AD_Session_ID") + "_"); 
		     file.append(ctx.getAD_User_ID()+"_" + upload.getFileName());      
		     
		try {
			final FileOutputStream stream = new FileOutputStream(file.toString()); 
				    stream.write(upload.getData());
				    stream.flush();    

			} catch (Exception e) {
				    log.warning(e.getMessage());  
			}
			
			// Write response 
			response.setHeader("Content-Type", "text/html");    
			PrintWriter out = response.getWriter();  
			
			out.print(file.toString());   
			out.flush();
			//#22596         
			
		}else if(action.equals(UPLOAD_FILE)) {
			if (((param = request.getParameter("AD_Table_ID")) != null)) {
				AD_Table_ID = Integer.parseInt(param);
			}
			if (((param = request.getParameter("Record_ID")) != null)) {
				Record_ID = Integer.parseInt(param);
			}

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			try {
				MAttachment attachment = MAttachment.get(ctx, AD_Table_ID, Record_ID);
				if (attachment == null) {
					attachment = new MAttachment(ctx, AD_Table_ID, Record_ID,
							null);
				}

				try {
					attachment.addEntry(upload.getFileName(), upload.getData());
				} catch (Exception e) {
					e.printStackTrace();
				}

				attachment.save();
				out.print(GlobalMessageConstants.UPLOAD_OK_MESSAGE);
			} catch (Exception e) {

				e.printStackTrace();
			}

		}
		// process for import file loader
		else {

			String formatName = null;
			if (((param = request.getParameter("formatName")) != null)) {
				formatName = param;
				System.out.println("Format Name " + formatName);
			}		

			PrintWriter out = response.getWriter();
			String fileName = upload.getFileName();

			if (fileName != null && !fileName.equals("")) {
				// fileName = FilenameUtils.getName(fileName);
				// File uploadedFile = new
				// File(rootDirectory+fileName);
				String deleteSql = " DELETE FROM T_ImpFormat WHERE WebSession =  ? ";
				try {
					PreparedStatement pstmt = DB.prepareStatement(deleteSql,ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE,
							null);
					pstmt.setString(1, session_id);
					pstmt.execute();
					pstmt.close();
				}

				catch (SQLException e) {
					log.log(Level.SEVERE, deleteSql, e);
				}
				/*MTImpFormat prevImpFormat = new MTImpFormat(server.getContext(),0, null);
				prevImpFormat.setWebSession(session_id);
				prevImpFormat.delete(true);
				*/
				try {
					InputStream uploadedStream = new ByteArrayInputStream(
							upload.getData());
					new BufferedReader(
							new InputStreamReader(uploadedStream));
					
					MTImpFormat impFormat = new MTImpFormat(server.getContext(),0, null);
					impFormat.setAD_Client_ID(ctx.getAD_Client_ID());
					impFormat.setAD_Org_ID(ctx.getAD_Org_ID());
					impFormat.setName(fileName);
					impFormat.setBinaryData(upload.getData());
					impFormat.setWebSession(session_id);
					impFormat.save();					


				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			out.print(GlobalMessageConstants.UPLOAD_OK_MESSAGE);
		}

	}
}
