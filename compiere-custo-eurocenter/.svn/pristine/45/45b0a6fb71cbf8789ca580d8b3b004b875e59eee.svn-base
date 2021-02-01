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
import org.compiere.framework.*;
import org.compiere.util.*;
/** Generated Model for Z_PosNumber
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_PosNumber extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_PosNumber_ID id
    @param trx transaction
    */
    public X_Z_PosNumber (Ctx ctx, int Z_PosNumber_ID, Trx trx)
    {
        super (ctx, Z_PosNumber_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_PosNumber_ID == 0)
        {
            setEPayment (null);
            setIsCashier (false);	// N
            setIsInstall (false);	// N
            setIsPosOnline (false);	// N
            setValue (null);
            setZ_OrgPOS_ID (0);
            setZ_PosNumber_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_PosNumber (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27643560612789L;
    /** Last Updated Timestamp 2013-02-21 09:28:16.0 */
    public static final long updatedMS = 1361435296000L;
    /** AD_Table_ID=1000857 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_PosNumber");
        
    }
    ;
    
    /** TableName=Z_PosNumber */
    public static final String Table_Name="Z_PosNumber";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set CashDrawerIP.
    @param CashDrawerIP CashDrawerIP */
    public void setCashDrawerIP (String CashDrawerIP)
    {
        set_Value ("CashDrawerIP", CashDrawerIP);
        
    }
    
    /** Get CashDrawerIP.
    @return CashDrawerIP */
    public String getCashDrawerIP() 
    {
        return (String)get_Value("CashDrawerIP");
        
    }
    
    /** Set EPayment.
    @param EPayment EPayment */
    public void setEPayment (String EPayment)
    {
        set_Value ("EPayment", EPayment);
        
    }
    
    /** Get EPayment.
    @return EPayment */
    public String getEPayment() 
    {
        return (String)get_Value("EPayment");
        
    }
    
    /** Set IsCashier.
    @param IsCashier IsCashier */
    public void setIsCashier (boolean IsCashier)
    {
        set_Value ("IsCashier", Boolean.valueOf(IsCashier));
        
    }
    
    /** Get IsCashier.
    @return IsCashier */
    public boolean isCashier() 
    {
        return get_ValueAsBoolean("IsCashier");
        
    }
    
    /** Set Is Install.
    @param IsInstall Is Install */
    public void setIsInstall (boolean IsInstall)
    {
        set_Value ("IsInstall", Boolean.valueOf(IsInstall));
        
    }
    
    /** Get Is Install.
    @return Is Install */
    public boolean isInstall() 
    {
        return get_ValueAsBoolean("IsInstall");
        
    }
    
    /** Set En Ligne.
    @param IsPosOnline En Ligne */
    public void setIsPosOnline (boolean IsPosOnline)
    {
        set_Value ("IsPosOnline", Boolean.valueOf(IsPosOnline));
        
    }
    
    /** Get En Ligne.
    @return En Ligne */
    public boolean isPosOnline() 
    {
        return get_ValueAsBoolean("IsPosOnline");
        
    }
    
    /** Set Search Key.
    @param Value Search key for the record in the format required - must be unique */
    public void setValue (String Value)
    {
        if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
        set_Value ("Value", Value);
        
    }
    
    /** Get Search Key.
    @return Search key for the record in the format required - must be unique */
    public String getValue() 
    {
        return (String)get_Value("Value");
        
    }
    
    /** Set Version No.
    @param VersionNo Version Number */
    public void setVersionNo (String VersionNo)
    {
        set_Value ("VersionNo", VersionNo);
        
    }
    
    /** Get Version No.
    @return Version Number */
    public String getVersionNo() 
    {
        return (String)get_Value("VersionNo");
        
    }
    
    /** Set Z_OrgPOS.
    @param Z_OrgPOS_ID Z_OrgPOS */
    public void setZ_OrgPOS_ID (int Z_OrgPOS_ID)
    {
        if (Z_OrgPOS_ID < 1) throw new IllegalArgumentException ("Z_OrgPOS_ID is mandatory.");
        set_ValueNoCheck ("Z_OrgPOS_ID", Integer.valueOf(Z_OrgPOS_ID));
        
    }
    
    /** Get Z_OrgPOS.
    @return Z_OrgPOS */
    public int getZ_OrgPOS_ID() 
    {
        return get_ValueAsInt("Z_OrgPOS_ID");
        
    }
    
    /** Set Z_PosNumber.
    @param Z_PosNumber_ID Table des pos actif */
    public void setZ_PosNumber_ID (int Z_PosNumber_ID)
    {
        if (Z_PosNumber_ID < 1) throw new IllegalArgumentException ("Z_PosNumber_ID is mandatory.");
        set_ValueNoCheck ("Z_PosNumber_ID", Integer.valueOf(Z_PosNumber_ID));
        
    }
    
    /** Get Z_PosNumber.
    @return Table des pos actif */
    public int getZ_PosNumber_ID() 
    {
        return get_ValueAsInt("Z_PosNumber_ID");
        
    }
    
    
}
