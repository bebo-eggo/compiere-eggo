package org.compiere.gwt.server.window;

import java.util.ArrayList;

import org.compiere.intf.ComponentImplIntf;
import org.compiere.util.Ctx;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

/**
 * 
 * 
 */

public class CalendarAdminWindowImpl extends WindowImpl {
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;

	/**
	 * 
	 * @param windowNO
	 * @param serverCtx
	 * @param ctx
	 * @param U_Window_ID
	 */
	public CalendarAdminWindowImpl(int windowNO, Ctx serverCtx,
			WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
	}

	@Override
	public ChangeVO processCallback(String sender) {
		return null;
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.AUDAXISADMIN_CALENDAR;
	}

}
