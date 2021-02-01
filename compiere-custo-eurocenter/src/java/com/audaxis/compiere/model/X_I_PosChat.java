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
import java.sql.ResultSet;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;
/** Generated Model for I_PosChat
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_PosChat extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_PosChat_ID id
    @param trx transaction
    */
    public X_I_PosChat (Ctx ctx, int I_PosChat_ID, Trx trx)
    {
        super (ctx, I_PosChat_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_PosChat_ID == 0)
        {
            setI_PosChat_ID (0);
            setIsExported (false);	// N
            setProcessed (false);	// N
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_PosChat (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27657213192789L;
    /** AD_Table_ID=1003471 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_PosChat");
        
    }
    ;
    
    /** TableName=I_PosChat */
    public static final String Table_Name="I_PosChat";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Character Data.
    @param CharacterData Long Character Field */
    public void setCharacterData (String CharacterData)
    {
        set_Value ("CharacterData", CharacterData);
        
    }
    
    /** Get Character Data.
    @return Long Character Field */
    public String getCharacterData() 
    {
        return (String)get_Value("CharacterData");
        
    }
    
    /** Set Chat.
    @param CM_Chat_ID Chat or discussion thread */
    public void setCM_Chat_ID (int CM_Chat_ID)
    {
        if (CM_Chat_ID <= 0) set_Value ("CM_Chat_ID", null);
        else
        set_Value ("CM_Chat_ID", Integer.valueOf(CM_Chat_ID));
        
    }
    
    /** Get Chat.
    @return Chat or discussion thread */
    public int getCM_Chat_ID() 
    {
        return get_ValueAsInt("CM_Chat_ID");
        
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
    
    /** Set Import Error Message.
    @param I_ErrorMsg Messages generated from import process */
    public void setI_ErrorMsg (String I_ErrorMsg)
    {
        set_Value ("I_ErrorMsg", I_ErrorMsg);
        
    }
    
    /** Get Import Error Message.
    @return Messages generated from import process */
    public String getI_ErrorMsg() 
    {
        return (String)get_Value("I_ErrorMsg");
        
    }
    
    /** Set I_PosChat.
    @param I_PosChat_ID I_PosChat */
    public void setI_PosChat_ID (int I_PosChat_ID)
    {
        if (I_PosChat_ID < 1) throw new IllegalArgumentException ("I_PosChat_ID is mandatory.");
        set_ValueNoCheck ("I_PosChat_ID", Integer.valueOf(I_PosChat_ID));
        
    }
    
    /** Get I_PosChat.
    @return I_PosChat */
    public int getI_PosChat_ID() 
    {
        return get_ValueAsInt("I_PosChat_ID");
        
    }
    
    /** Set Export data.
    @param IsExported Is data exported or imported? */
    public void setIsExported (boolean IsExported)
    {
        set_Value ("IsExported", Boolean.valueOf(IsExported));
        
    }
    
    /** Get Export data.
    @return Is data exported or imported? */
    public boolean isExported() 
    {
        return get_ValueAsBoolean("IsExported");
        
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
    
    
}
