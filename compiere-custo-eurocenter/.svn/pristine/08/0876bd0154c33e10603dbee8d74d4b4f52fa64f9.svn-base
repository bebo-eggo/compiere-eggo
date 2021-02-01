package com.audaxis.compiere.intervat.declarators;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.Normalizer;
import java.text.Normalizer.Form;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Level;

import org.compiere.model.MClient;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MYear;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;

import com.audaxis.compiere.intervat.JAXBClientListingConsignment;
import com.audaxis.compiere.intervat.vo.YearElement;
import com.audaxis.compiere.intervat.xml.v07.BECountryCode;
import com.audaxis.compiere.intervat.xml.v07.ClientListingConsignment;
import com.audaxis.compiere.intervat.xml.v07.ClientListingType;
import com.audaxis.compiere.intervat.xml.v07.ClientType;
import com.audaxis.compiere.intervat.xml.v07.ClientVATNumberType;
import com.audaxis.compiere.intervat.xml.v07.DeclarantType;
import com.audaxis.compiere.intervat.xml.v07.ObjectFactory;
import com.audaxis.compiere.intervat.xml.v07.RepresentativeIDType;
import com.audaxis.compiere.intervat.xml.v07.RepresentativeIDTypeType;
import com.audaxis.compiere.intervat.xml.v07.RepresentativeType;
import com.audaxis.compiere.intervat.xml.v07.YesNoType;

/**
 * Redmine 34275
 */
public class YearToXml {

	private static CLogger log = CLogger.getCLogger(YearToXml.class);

	public void createDeclaration(Ctx ctx, File file, MClient client, MOrg org, MYear year, MOrgInfo orginfo, boolean isTenant, ArrayList<YearElement> list){
		
		ObjectFactory obj = new ObjectFactory();

		//ROOT Element
		ClientListingConsignment clientListingConsignment = obj.createClientListingConsignment();

		//HEAD Informations
		clientListingConsignment.setClientListingsNbr(BigInteger.ONE);
		clientListingConsignment.setRepresentativeReference(org.getValue());
	
		RepresentativeType representativeType = createRepresentativeType(ctx, obj, client, org, orginfo, isTenant);

		clientListingConsignment.setRepresentative(representativeType);
		
		int ad_org_id = 0;
		int seq = 1;
		int index = 0;
		DeclarantType declarant = null;
		ClientListingType clientListingType = null;

		for (YearElement element : list) {
			//Declarant
			if (ad_org_id != element.getOrgID()){
				clientListingType = createClientListingType(obj, element, year, list);
				declarant = createDeclarant(ctx, obj, element.getOrgID());
				clientListingType.setDeclarant(declarant);
				seq = 1;
				ad_org_id = element.getOrgID();
			}

			//ClientType
			ClientType clientType = createClientType(obj, element, seq);
			seq++;
			
			clientListingType.getClient().add(clientType);
			
			//A la fin de la liste ou organisation change
			if ((list.size()==index+1) || element.getOrgID() != list.get(index+1).getOrgID()){
				clientListingConsignment.getClientListing().add(clientListingType);
			}
			index++;
		}

		//Ecriture du fichier
		buildfile(clientListingConsignment, file);

	}

	private void buildfile(ClientListingConsignment clientListingConsignment, File file){
		BufferedWriter out = null;
		try	{
			JAXBClientListingConsignment creator  = new JAXBClientListingConsignment();
			String xml = creator.create(clientListingConsignment);

			FileWriter fstream = new FileWriter(file);
			out = new BufferedWriter(fstream);
			out.write(xml);
		} catch (Exception e) {
			log.log(Level.SEVERE,"E",e);
		}
		finally {
			try {out.close();} catch (IOException e) {}
		}
	}
	
	private RepresentativeType createRepresentativeType(Ctx ctx, ObjectFactory obj, MClient client, MOrg org, MOrgInfo orginfo, boolean isTenant){
		
		String name = isTenant ? client.getName() : org.getName();
		
		MLocation loc = MLocation.get(ctx, orginfo.getC_Location_ID(), null);
		
		RepresentativeType representativeType = obj.createRepresentativeType();
		
		RepresentativeIDType representativeIDType = obj.createRepresentativeIDType();
		representativeIDType.setIdentificationType(RepresentativeIDTypeType.TIN);
		representativeIDType.setValue(getISOCodeTaxID(orginfo.getTaxID(), false));
		representativeIDType.setIssuedBy(getISOCodeTaxID(orginfo.getTaxID(), true));

		representativeType.setRepresentativeID(representativeIDType);
		representativeType.setName(name);
		String street = Normalizer.normalize(loc.getAddress1(), Form.NFD)
        .replaceAll("\\p{InCombiningDiacriticalMarks}+", "");
		representativeType.setStreet(street);
		representativeType.setPostCode(loc.getPostal());
		representativeType.setEmailAddress(orginfo.get_ValueAsString("EMail"));
		representativeType.setPhone(orginfo.get_ValueAsString("Phone"));
		representativeType.setCity(loc.getCity());
		representativeType.getCountryCode().add(loc.getCountry().getCountryCode());
		
		return representativeType;
	}
	
	private DeclarantType createDeclarant(Ctx ctx, ObjectFactory obj, int ad_org_id){
		MOrg org = new MOrg(ctx, ad_org_id, null);
		MOrgInfo orginfo = MOrgInfo.get(ctx, ad_org_id, null);
		MLocation loc = new MLocation(ctx, orginfo.getC_Location_ID(), null);
		
		DeclarantType declarant = obj.createDeclarantType();
		
		declarant.setVATNumber(getISOCodeTaxID(orginfo.getTaxID(),false));
		declarant.setName(org.getName());
		String street = Normalizer.normalize(loc.getAddress1(), Form.NFD)
		        .replaceAll("\\p{InCombiningDiacriticalMarks}+", "");
		declarant.setStreet(street);
		declarant.setPostCode(loc.getPostal());
		declarant.setCity(loc.getCity());
		declarant.setCountryCode(loc.getCountry()!=null ? loc.getCountry().getCountryCode():"");
		declarant.setEmailAddress(orginfo.get_ValueAsString("EMail"));
		declarant.setPhone(orginfo.get_ValueAsString("Phone"));
		
		return declarant;
	}
	
	private ClientListingType createClientListingType (ObjectFactory obj, YearElement element, MYear year, ArrayList<YearElement> list){
		ClientListingType clientListingType = obj.createClientListingType();
		
		clientListingType.setSequenceNumber(BigInteger.ONE);
		clientListingType.setClientsNbr(list.size());
		//clientListingType.setFarmer(YesNoType.NO);
		clientListingType.setPeriod(BigInteger.valueOf(year.getYearAsInt()));
		clientListingType.setTurnOverSum(YearElement.getTurnOverSum(element.getOrgID(), list));
		clientListingType.setVATAmountSum(YearElement.getVATAmountSum(element.getOrgID(), list));
		
		return clientListingType;
	}
	
	private ClientType createClientType(ObjectFactory obj, YearElement element, int seq){
		ClientType clientType = obj.createClientType();
		
		ClientVATNumberType clientVATNumberType = obj.createClientVATNumberType();
		clientVATNumberType.setIssuedBy(BECountryCode.BE);
		clientVATNumberType.setValue(getISOCodeTaxID(element.getVatnumber(), false));
		
		clientType.setCompanyVATNumber (clientVATNumberType);
		clientType.setSequenceNumber(BigInteger.valueOf(seq));
		BigDecimal amt  = element.getTurnOver().setScale(2, BigDecimal.ROUND_UP);
		clientType.setTurnOver(amt);
		amt  = element.getVATAmount().setScale(2, BigDecimal.ROUND_UP);
		clientType.setVATAmount(amt);
		
		return clientType;
	}
	
	private String getISOCodeTaxID(String taxid, boolean onlyISOCode){
		if (taxid==null || taxid.length()<=2)
			return "";
		if (!onlyISOCode)
			return taxid.substring(2);
		else
			return taxid.substring(0, 2);
			
	}

}
