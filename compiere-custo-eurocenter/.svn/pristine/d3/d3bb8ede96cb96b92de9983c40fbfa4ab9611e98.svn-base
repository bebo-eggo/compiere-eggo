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
package com.audaxis.compiere.eurocenter.ws;

/** Generated Model - DO NOT CHANGE */
import java.sql.*;
import org.compiere.framework.*;
import org.compiere.util.*;
/** Generated Model for XX_OrderEventLog
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_OrderEventLog extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_OrderEventLog_ID id
    @param trx transaction
    */
    public X_XX_OrderEventLog (Ctx ctx, int XX_OrderEventLog_ID, Trx trx)
    {
        super (ctx, XX_OrderEventLog_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_OrderEventLog_ID == 0)
        {
            setXX_OrderEventLog_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_OrderEventLog (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27839950062789L;
    /** AD_Table_ID=1007594 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_OrderEventLog");
        
    }
    ;
    
    /** TableName=XX_OrderEventLog */
    public static final String Table_Name="XX_OrderEventLog";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Table.
    @param AD_Table_ID Database Table information */
    public void setAD_Table_ID (int AD_Table_ID)
    {
        if (AD_Table_ID <= 0) set_Value ("AD_Table_ID", null);
        else
        set_Value ("AD_Table_ID", Integer.valueOf(AD_Table_ID));
        
    }
    
    /** Get Table.
    @return Database Table information */
    public int getAD_Table_ID() 
    {
        return get_ValueAsInt("AD_Table_ID");
        
    }
    
    /** Set AD_User_ID.
    @param AD_User_ID AD_User_ID */
    public void setAD_User_ID (int AD_User_ID)
    {
        if (AD_User_ID <= 0) set_Value ("AD_User_ID", null);
        else
        set_Value ("AD_User_ID", Integer.valueOf(AD_User_ID));
        
    }
    
    /** Get AD_User_ID.
    @return AD_User_ID */
    public int getAD_User_ID() 
    {
        return get_ValueAsInt("AD_User_ID");
        
    }
    
    /** Set Action date.
    @param DateAction Action date */
    public void setDateAction (Timestamp DateAction)
    {
        set_Value ("DateAction", DateAction);
        
    }
    
    /** Get Action date.
    @return Action date */
    public Timestamp getDateAction() 
    {
        return (Timestamp)get_Value("DateAction");
        
    }
    
    /** Set Event Type.
    @param EventType Type of Event */
    public void setEventType (String EventType)
    {
        set_Value ("EventType", EventType);
        
    }
    
    /** Get Event Type.
    @return Type of Event */
    public String getEventType() 
    {
        return (String)get_Value("EventType");
        
    }
    
    /** Set Record ID.
    @param Record_ID Direct internal record ID */
    public void setRecord_ID (int Record_ID)
    {
        if (Record_ID <= 0) set_Value ("Record_ID", null);
        else
        set_Value ("Record_ID", Integer.valueOf(Record_ID));
        
    }
    
    /** Get Record ID.
    @return Direct internal record ID */
    public int getRecord_ID() 
    {
        return get_ValueAsInt("Record_ID");
        
    }
    
    /** Set Log Event Order.
    @param XX_OrderEventLog_ID Log Event Order */
    public void setXX_OrderEventLog_ID (int XX_OrderEventLog_ID)
    {
        if (XX_OrderEventLog_ID < 1) throw new IllegalArgumentException ("XX_OrderEventLog_ID is mandatory.");
        set_ValueNoCheck ("XX_OrderEventLog_ID", Integer.valueOf(XX_OrderEventLog_ID));
        
    }
    
    /** Get Log Event Order.
    @return Log Event Order */
    public int getXX_OrderEventLog_ID() 
    {
        return get_ValueAsInt("XX_OrderEventLog_ID");
        
    }
    
    /** Set WS Event Log.
    @param XX_WSEventLog_ID WS Event Log */
    public void setXX_WSEventLog_ID (java.math.BigDecimal XX_WSEventLog_ID)
    {
        set_Value ("XX_WSEventLog_ID", XX_WSEventLog_ID);
        
    }
    
    /** Get WS Event Log.
    @return WS Event Log */
    public java.math.BigDecimal getXX_WSEventLog_ID() 
    {
        return get_ValueAsBigDecimal("XX_WSEventLog_ID");
        
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
    
    public void setDownloadURL (String DownloadURL)
    {
        set_Value ("DownloadURL", DownloadURL);
    }
    
    public String getDownloadURL() 
    {
        return (String)get_Value("DownloadURL");
        
    }
    
    public void setRecouv_Date (Timestamp XX_Recouv_Date)
    {
        set_Value ("XX_Recouv_Date", XX_Recouv_Date);
    }
    
    public Timestamp getRecouv_Date() 
    {
        return (Timestamp)get_Value("XX_Recouv_Date");
        
    }
    
    public void setRecouv_List (String XX_Recouv_List)
    {
        set_Value ("XX_Recouv_List", XX_Recouv_List);
    }
    
    public String getRecouv_List() 
    {
        return (String)get_Value("XX_Recouv_List");
        
    }
}
