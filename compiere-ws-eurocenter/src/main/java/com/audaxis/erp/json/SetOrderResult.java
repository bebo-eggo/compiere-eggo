package com.audaxis.erp.json;

import java.util.HashMap;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class SetOrderResult extends Base<SetOrderResult>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@JsonProperty("error")
	public String error;

	@JsonProperty("error_desc")
	public String errordesc;
	
	@JsonProperty("orderno")
	public String orderno;

	@JsonInclude(JsonInclude.Include.NON_NULL) 
	@JsonProperty("")
	public String orders;
	
	public SetOrderResult() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return ""+orders;
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
	public final static String E031 = "031";
    public final static String E040 = "040";
	public final static String E041 = "040";
	public final static String E050 = "050";
	public final static String E051 = "051";
	public final static String E101 = "101";	
	public final static String E102 = "102";	
	public final static String E103 = "103";	
	public final static String E104 = "104";	
	public final static String E105 = "105";
	public final static String E501 = "501";		
	public final static String E502 = "502";
	public final static String E503 = "503";
	public final static String E504 = "504";
	public final static String E505 = "505";
	public final static String E506 = "506";
	public final static String E507 = "507";
	public final static String E508 = "508";
	public final static String E999 = "999";
	
	static
	{
		ERRORS.put(E000,"Ok");
		ERRORS.put(E001,"ID Session inconnu ou non valide");
		ERRORS.put(E002,"Soci�t� non trouv�e");
		ERRORS.put(E003,"Valeur N ou Y");
		ERRORS.put(E004,"Incoh�rence Document et Input");
		ERRORS.put(E010,"Document IN OUT non trouv� ");
		ERRORS.put(E011,"Document order non trouv�");
		ERRORS.put(E020,"Type de document non trouv�" );
		ERRORS.put(E030,"Tiers non trouv�" );
		ERRORS.put(E031,"Vendeur non trouv�" );
		ERRORS.put(E040,"Magasin non trouv�" );
		ERRORS.put(E041,"Magasin entrepot non trouv�" );
		ERRORS.put(E050,"Action document inconnue" );
		ERRORS.put(E051,"Impossible de cr�er le InOUt" );
		ERRORS.put(E101,"Ligne non trouv�e" );
		ERRORS.put(E102,"Article non trouv�" );
		ERRORS.put(E103,"Emplacement non trouv�" );
		ERRORS.put(E104,"Quantit� = 0" );
		ERRORS.put(E105,"Changement d'article impossible" );
		ERRORS.put(E501,"Statut Document modifi�" );
		ERRORS.put(E502,"Document annul�" );
		ERRORS.put(E503,"Document achev�" );
		ERRORS.put(E504,"ODV obligatoire pour exp�dition client" );
		ERRORS.put(E505,"Ligne ODV obligatoire pour exp�dition client" );
		ERRORS.put(E506,"Impossible de traiter le document" );
		ERRORS.put(E507,"Order cr��" );
		ERRORS.put(E508,"Ligne OA obligatoire pour r�ception OA" );
		ERRORS.put(E999,"Erreur inattendue" );
	}
}
