/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.util.DB;

/**
 * Import Products from I_Product
 * 
 * @author Jorg Janke
 * @version $Id: ImportProduct.java,v 1.3 2006/07/30 00:51:01 jjanke Exp $
 */
public class DeleteImportProd extends SvrProcess {
	/** Client to be imported to */
	private int m_AD_Client_ID = 0;
	/** Delete old Imported */
	private static final String STD_CLIENT_CHECK = "  AD_Client_ID=? ";

	/** Effective */
	private Timestamp m_DateValue = null;
	
		/**
	 * Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal) element.getParameter())
						.intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		if (m_DateValue == null)
			m_DateValue = new Timestamp(System.currentTimeMillis());
	} // prepare

	/**
	 * Perform process.
	 * 
	 * @return Message
	 * @throws Exception
	 */
	@Override
	protected String doIt() throws java.lang.Exception {
		String sql = null;
		int no = 0;

		// **** Prepare ****

		// Delete All Imported
		
			sql = "DELETE FROM I_Product WHERE  "
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, null);
			log.info("Delete All Impored =" + no);
		return "Enregistrement Supprimé : " + no ;
		} // doIt

		
} // DeleteImportProd