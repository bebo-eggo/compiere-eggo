package com.audaxis.erp.service;

import com.audaxis.erp.json.CA_Mag;

public interface ITurnoverForAllStores extends IBaseService {

	public CA_Mag getTurnoverForAllStores(String annee, String mois);
}
