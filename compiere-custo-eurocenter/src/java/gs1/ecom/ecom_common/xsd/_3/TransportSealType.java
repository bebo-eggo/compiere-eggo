//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.ecom.ecom_common.xsd._3;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import gs1.shared.shared_common.xsd._3.IdentifierType;


/**
 * <p>Java class for TransportSealType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="TransportSealType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="sealIdentification" type="{urn:gs1:shared:shared_common:xsd:3}IdentifierType"/>
 *         &lt;element name="sealTypeCode" type="{urn:gs1:ecom:ecom_common:xsd:3}SealTypeCodeType"/>
 *         &lt;element name="sealAffixingPartyRole" type="{urn:gs1:ecom:ecom_common:xsd:3}TransportPartyRoleCodeType" minOccurs="0"/>
 *         &lt;element name="sealConditionCode" type="{urn:gs1:ecom:ecom_common:xsd:3}SealConditionCodeType" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "TransportSealType", propOrder = {
    "sealIdentification",
    "sealTypeCode",
    "sealAffixingPartyRole",
    "sealConditionCode"
})
public class TransportSealType {

    @XmlElement(required = true)
    protected IdentifierType sealIdentification;
    @XmlElement(required = true)
    protected SealTypeCodeType sealTypeCode;
    protected TransportPartyRoleCodeType sealAffixingPartyRole;
    protected SealConditionCodeType sealConditionCode;

    /**
     * Gets the value of the sealIdentification property.
     * 
     * @return
     *     possible object is
     *     {@link IdentifierType }
     *     
     */
    public IdentifierType getSealIdentification() {
        return sealIdentification;
    }

    /**
     * Sets the value of the sealIdentification property.
     * 
     * @param value
     *     allowed object is
     *     {@link IdentifierType }
     *     
     */
    public void setSealIdentification(IdentifierType value) {
        this.sealIdentification = value;
    }

    /**
     * Gets the value of the sealTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link SealTypeCodeType }
     *     
     */
    public SealTypeCodeType getSealTypeCode() {
        return sealTypeCode;
    }

    /**
     * Sets the value of the sealTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link SealTypeCodeType }
     *     
     */
    public void setSealTypeCode(SealTypeCodeType value) {
        this.sealTypeCode = value;
    }

    /**
     * Gets the value of the sealAffixingPartyRole property.
     * 
     * @return
     *     possible object is
     *     {@link TransportPartyRoleCodeType }
     *     
     */
    public TransportPartyRoleCodeType getSealAffixingPartyRole() {
        return sealAffixingPartyRole;
    }

    /**
     * Sets the value of the sealAffixingPartyRole property.
     * 
     * @param value
     *     allowed object is
     *     {@link TransportPartyRoleCodeType }
     *     
     */
    public void setSealAffixingPartyRole(TransportPartyRoleCodeType value) {
        this.sealAffixingPartyRole = value;
    }

    /**
     * Gets the value of the sealConditionCode property.
     * 
     * @return
     *     possible object is
     *     {@link SealConditionCodeType }
     *     
     */
    public SealConditionCodeType getSealConditionCode() {
        return sealConditionCode;
    }

    /**
     * Sets the value of the sealConditionCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link SealConditionCodeType }
     *     
     */
    public void setSealConditionCode(SealConditionCodeType value) {
        this.sealConditionCode = value;
    }

}