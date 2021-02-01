/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
package com.audaxis.compiere.process;

import org.compiere.model.MInOut;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

import org.compiere.util.*;

import java.sql.*;

import java.util.logging.*;


/**
 *        Order Batch Processing
 *
 *  @author Steven (based on Jorg Janke MOrderBatchProcess)
 *  @version $Id: MInOutBatchProcess.java,v 1.5 2007-03-13 17:51:09 vha Exp $
 */
public class MInOutBatchProcess extends SvrProcess
{
    private int p_C_DocType_ID = 0;
    private String p_DocStatus = null;
    private int p_C_BPartner_ID = 0;

    //private String 		p_IsSelfService = null;
    private Timestamp p_DateOrdered_From = null;
    private Timestamp p_DateOrdered_To = null;
    private String p_DocAction = "CO";
    private String p_isSOTrx = "Y";

    /**
     *         Prepare
     */
    protected void prepare()
    {
        ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)
        {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null)
            {
                ;
            }
            else if (name.equals("C_DocType_ID"))
            {
                p_C_DocType_ID = para[i].getParameterAsInt();
            }
            else if (name.equals("DocStatus"))
            {
                p_DocStatus = (String) para[i].getParameter();
            }
            else if (name.equals("C_BPartner_ID"))
            {
                p_C_BPartner_ID = para[i].getParameterAsInt();
            }
            else if (name.equals("DateOrdered"))
            {
                p_DateOrdered_From = (Timestamp) para[i].getParameter();
                p_DateOrdered_To = (Timestamp) para[i].getParameter_To();
            }
            else if (name.equals("DocAction"))
            {
                p_DocAction = (String) para[i].getParameter();
            }
            else if (name.equals("isSOTrx"))
            {
                p_isSOTrx = (String) para[i].getParameter();
            }
            else
            {
                log.log(Level.SEVERE, "Unknown Parameter: " + name);
            }
        }
    } //	prepare

    /**
     *         Process
     *        @return msg
     *        @throws Exception
     */
    protected String doIt() throws Exception
    {
        //		log.info("C_DocType_ID=" + p_C_DocType_ID + ", DocStatus=" + p_DocStatus
        //			+ ", C_BPartner_ID=" + p_C_BPartner_ID
        //			+ ", DateOrdered=" + p_DateOrdered_From + "->" + p_DateOrdered_To
        //			+ ", DocAction=" + p_DocAction);

        /*                if (p_C_DocType_ID == 0)
                                throw new CompiereUserError("@NotFound@: @C_DocTypeTarget_ID@"); */
        if ((p_DocStatus == null) || (p_DocStatus.length() != 2))
        {
            throw new CompiereUserException("@NotFound@: @DocStatus@");
        }
       
        if ((p_DocAction == null) || (p_DocAction.length() != 2))
        {
            throw new CompiereUserException("@NotFound@: @DocAction@");
        }

        //
        StringBuffer sql = new StringBuffer("SELECT * FROM M_InOut " +
                "WHERE DocStatus=? AND isSOTrx =? ");

        if (p_C_DocType_ID != 0)
        {
            sql.append(" AND C_DocType_ID=").append(p_C_DocType_ID);
        }

        if (p_C_BPartner_ID != 0)
        {
            sql.append(" AND C_BPartner_ID=").append(p_C_BPartner_ID);
        }

        if (p_DateOrdered_From != null)
        {
            sql.append(" AND TRUNC(DateOrdered) >= ")
               .append(DB.TO_DATE(p_DateOrdered_From, true));
        }

        if (p_DateOrdered_To != null)
        {
            sql.append(" AND TRUNC(DateOrdered) <= ")
               .append(DB.TO_DATE(p_DateOrdered_To, true));
        }

        int counter = 0;
        int errCounter = 0;
        PreparedStatement pstmt = null;

        try
        {
            pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
            pstmt.setString(1, p_DocStatus);
            pstmt.setString(2, p_isSOTrx);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next())
            {
                if (process(new MInOut(getCtx(), rs, get_TrxName())))
                {
                    counter++;
                }
                else
                {
                    errCounter++;
                }
            }

            rs.close();
            pstmt.close();
            pstmt = null;
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE, sql.toString(), e);
        }

        try
        {
            if (pstmt != null)
            {
                pstmt.close();
            }

            pstmt = null;
        }
        catch (Exception e)
        {
            pstmt = null;
        }

        return "@Updated@=" + counter + ", @Errors@=" + errCounter;
    } //	doIt

    /**
     *         Process MInOut
     *        @param MInout
     *        @return
     */
    private boolean process(MInOut io)
    {
        log.info(io.toString());
        //
        io.setDocAction(p_DocAction);

        if (DocumentEngine.processIt(io, p_DocAction))
        {
            io.save();
            addLog(0, null, null, io.getDocumentNo() + ": OK");

            return true;
        }

        addLog(0, null, null,
            io.getDocumentNo() + ": Error " + io.getProcessMsg());

        return false;
    } //	process
} //	OrderBatchProcess
