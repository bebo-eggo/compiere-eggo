package com.audaxis.erp.json;

import java.util.HashMap;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class SetMovementConfirmResult extends Base<SetMovementConfirmResult>{

	@JsonProperty("error")
	public String error;

	@JsonProperty("error_desc")
	public String errordesc;

	@JsonInclude(JsonInclude.Include.NON_NULL) 
	@JsonProperty("M_MovementConfirm_ID")
	public Integer M_MovementConfirm_ID;
	
	@JsonProperty("DocumentNo")
	public String documentNo;
	
	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public static String getErrorMsg(String key){
		return ERRORS.get(key);
	}

	public final static HashMap<String, String> ERRORS = new HashMap<>();

	public final static String E000 = "000";
	public final static String E001 = "001";
	public final static String E002 = "002";
	public final static String E003 = "003";
	public final static String E004 = "004";
	public final static String E010 = "010";
	public final static String E011 = "011";
	public final static String E020 = "020"; 
	public final static String E030 = "030";
    public final static String E040 = "040";
	public final static String E041 = "040";
	public final static String E050 = "050";
	public final static String E051 = "051";
	public final static String E101 = "101";	
	public final static String E102 = "102";	
	public final static String E103 = "103";	
	public final static String E104 = "104";	
	public final static String E105 = "105";
	public final static String E106 = "106";
	public final static String E501 = "501";		
	public final static String E502 = "502";
	public final static String E503 = "503";
	public final static String E504 = "504";
	public final static String E505 = "505";
	public final static String E506 = "506";
	public final static String E507 = "507";
	public final static String E508 = "508";
	public final static String E509 = "509";
	public final static String E999 = "999";
	
	static
	{
		ERRORS.put(E000,"Ok");
		ERRORS.put(E001,"ID Session inconnu ou non valide");
		ERRORS.put(E002,"Société non trouvée");
		ERRORS.put(E003,"Valeur N ou Y");
		ERRORS.put(E004,"Incohérence Document et Input");
		ERRORS.put(E010,"Document Transfert confimation non trouvé ");
		ERRORS.put(E011,"Document non trouvé");
		ERRORS.put(E020,"Type de document non trouvé" );
		ERRORS.put(E030,"Tiers non trouvé" );
		ERRORS.put(E040,"Magasin non trouvé" );
		ERRORS.put(E041,"Magasin entrepot non trouvé" );
		ERRORS.put(E050,"Action document inconnue" );
		ERRORS.put(E051,"Impossible de créer le transfert" );
		ERRORS.put(E101,"Ligne non trouvée" );
		ERRORS.put(E102,"Article non trouvé" );
		ERRORS.put(E103,"Emplacement non trouvé" );
		ERRORS.put(E104,"Quantité = 0" );
		ERRORS.put(E105,"Emplacement de - à identique" );
		ERRORS.put(E106,"Confirmation de transfert créé" );
		ERRORS.put(E501,"Statut Document modifié" );
		ERRORS.put(E502,"Document annulé" );
		ERRORS.put(E503,"Document achevé" );
		ERRORS.put(E504,"ODV obligatoire pour expédition client" );
		ERRORS.put(E505,"Ligne ODV obligatoire pour expédition client" );
		ERRORS.put(E506,"Impossible de traiter le document" );
		ERRORS.put(E507,"Transfert créé" );
		ERRORS.put(E508,"No de ligne vide" );
		ERRORS.put(E509,"Traiter le movement de confirmation associé" );
		ERRORS.put(E999,"Erreur inattendue" );
	}

	
}
