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
package com.audaxis.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.sql.*;
import org.compiere.framework.*;
import org.compiere.util.*;
/** Generated Model for C_OrderDownload
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_C_OrderDownload extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param C_OrderDownload_ID id
    @param trx transaction
    */
    public X_C_OrderDownload (Ctx ctx, int C_OrderDownload_ID, Trx trx)
    {
        super (ctx, C_OrderDownload_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (C_OrderDownload_ID == 0)
        {
            setC_OrderDownload_ID (0);
            setC_Order_ID (0);
            setDownloadURL (null);
            setName (null);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_C_OrderDownload (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27638635785789L;
    /** Last Updated Timestamp 2012-12-26 09:27:49.0 */
    public static final long updatedMS = 1356510469000L;
    /** AD_Table_ID=1001793 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("C_OrderDownload");
        
    }
    ;
    
    /** TableName=C_OrderDownload */
    public static final String Table_Name="C_OrderDownload";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Order Download.
    @param C_OrderDownload_ID Order downloads */
    public void setC_OrderDownload_ID (int C_OrderDownload_ID)
    {
        if (C_OrderDownload_ID < 1) throw new IllegalArgumentException ("C_OrderDownload_ID is mandatory.");
        set_Value ("C_OrderDownload_ID", Integer.valueOf(C_OrderDownload_ID));
        
    }
    
    /** Get Order Download.
    @return Order downloads */
    public int getC_OrderDownload_ID() 
    {
        return get_ValueAsInt("C_OrderDownload_ID");
        
    }
    
    /** Set Order.
    @param C_Order_ID Order */
    public void setC_Order_ID (int C_Order_ID)
    {
        if (C_Order_ID < 1) throw new IllegalArgumentException ("C_Order_ID is mandatory.");
        set_ValueNoCheck ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    /** Set Download URL.
    @param DownloadURL URL of the Download files */
    public void setDownloadURL (String DownloadURL)
    {
        if (DownloadURL == null) throw new IllegalArgumentException ("DownloadURL is mandatory.");
        set_Value ("DownloadURL", DownloadURL);
        
    }
    
    /** Get Download URL.
    @return URL of the Download files */
    public String getDownloadURL() 
    {
        return (String)get_Value("DownloadURL");
        
    }
    
    /** Set Name.
    @param Name Alphanumeric identifier of the entity */
    public void setName (String Name)
    {
        if (Name == null) throw new IllegalArgumentException ("Name is mandatory.");
        set_Value ("Name", Name);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getName() 
    {
        return (String)get_Value("Name");
        
    }
    
    /** Set Z_FileType.
    @param Name Alphanumeric identifier of the entity */
    public void setZ_FileType (String Z_FileType)
    {
        set_Value ("Z_FileType", Z_FileType);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getZ_FileType() 
    {
        return (String)get_Value("Z_FileType");
        
    }
    
    /** Set Z_FileType.
    @param Name Alphanumeric identifier of the entity */
    public void setDescription (String Description)
    {
        set_Value ("Description", Description);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getDescription() 
    {
        return (String)get_Value("Description");
        
    }
    
}
