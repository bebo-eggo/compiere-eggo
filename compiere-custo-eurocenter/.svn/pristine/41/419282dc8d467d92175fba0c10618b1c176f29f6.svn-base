/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2008 Compiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us at *
 * Compiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

import org.compiere.framework.*;
import org.compiere.util.*;
/** Generated Model for XX_BPARTNER_GROUP
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_BPARTNER_GROUP extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_BPARTNER_GROUP_ID id
    @param trx transaction
    */
    public X_XX_BPARTNER_GROUP (Ctx ctx, int XX_BPARTNER_GROUP_ID, Trx trx)
    {
        super (ctx, XX_BPARTNER_GROUP_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_BPARTNER_GROUP_ID == 0)
        {
            setProcessed (false);
            setXX_BPARTNER_GROUP_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_BPARTNER_GROUP (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27825607595789L;
    /** AD_Table_ID=1007591 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_BPARTNER_GROUP");
        
    }
    ;
    
    /** TableName=XX_BPARTNER_GROUP */
    public static final String Table_Name="XX_BPARTNER_GROUP";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Description.
    @param Description Optional short description of the record */
    public void setDescription (String Description)
    {
        set_Value ("Description", Description);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription() 
    {
        return (String)get_Value("Description");
        
    }
    
    /** Set Document No.
    @param DocumentNo Document sequence number of the document */
    public void setDocumentNo (String DocumentNo)
    {
        set_Value ("DocumentNo", DocumentNo);
        
    }
    
    /** Get Document No.
    @return Document sequence number of the document */
    public String getDocumentNo() 
    {
        return (String)get_Value("DocumentNo");
        
    }
    
    /** Set Processed.
    @param Processed The document has been processed */
    public void setProcessed (boolean Processed)
    {
        set_Value ("Processed", Boolean.valueOf(Processed));
        
    }
    
    /** Get Processed.
    @return The document has been processed */
    public boolean isProcessed() 
    {
        return get_ValueAsBoolean("Processed");
        
    }
    
    /** Set Process Now.
    @param Processing Process Now */
    public void setProcessing (boolean Processing)
    {
        set_Value ("Processing", Boolean.valueOf(Processing));
        
    }
    
    /** Get Process Now.
    @return Process Now */
    public boolean isProcessing() 
    {
        return get_ValueAsBoolean("Processing");
        
    }
    
    /** Set Maintenance Tiers - Groupe de tiers.
    @param XX_BPARTNER_GROUP_ID Maintenance Tiers - Groupe de tiers */
    public void setXX_BPARTNER_GROUP_ID (int XX_BPARTNER_GROUP_ID)
    {
        if (XX_BPARTNER_GROUP_ID < 1) throw new IllegalArgumentException ("XX_BPARTNER_GROUP_ID is mandatory.");
        set_ValueNoCheck ("XX_BPARTNER_GROUP_ID", Integer.valueOf(XX_BPARTNER_GROUP_ID));
        
    }
    
    /** Get Maintenance Tiers - Groupe de tiers.
    @return Maintenance Tiers - Groupe de tiers */
    public int getXX_BPARTNER_GROUP_ID() 
    {
        return get_ValueAsInt("XX_BPARTNER_GROUP_ID");
        
    }
    
    /** Set Chargement liste tiers - groupe.
    @param XX_LoadBPGroup Chargement liste tiers - groupe */
    public void setXX_LoadBPGroup (String XX_LoadBPGroup)
    {
        set_Value ("XX_LoadBPGroup", XX_LoadBPGroup);
        
    }
    
    /** Get Chargement liste tiers - groupe.
    @return Chargement liste tiers - groupe */
    public String getXX_LoadBPGroup() 
    {
        return (String)get_Value("XX_LoadBPGroup");
        
    }
    
    
	public void setDescription2 (String Description)
    {
		SimpleDateFormat DATEFORMAT_DDMMYYYY_HHMMSS = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		String xxx = DATEFORMAT_DDMMYYYY_HHMMSS.format(new Date(GregorianCalendar.getInstance().getTimeInMillis()))+System.getProperty("line.separator");
		Description = xxx+Description;
    	if(getDescription()!=null && getDescription().length()>0)
    		Description = Description+System.getProperty("line.separator")+getDescription();
        set_Value ("Description", Description);
        
    }
	
	
	public void setFileName (String FileName)
    {
        set_Value ("FileName", FileName);
        
    }
    
    public String getFileName() 
    {
        return (String)get_Value("FileName");
        
    }
    
    
}
