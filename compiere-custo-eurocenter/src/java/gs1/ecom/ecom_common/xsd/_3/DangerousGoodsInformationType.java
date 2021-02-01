//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.ecom.ecom_common.xsd._3;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;
import gs1.shared.shared_common.xsd._3.ContactType;
import gs1.shared.shared_common.xsd._3.Description1000Type;
import gs1.shared.shared_common.xsd._3.Description200Type;
import gs1.shared.shared_common.xsd._3.IdentifierType;


/**
 * <p>Java class for DangerousGoodsInformationType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="DangerousGoodsInformationType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="dangerousGoodsUNIdentifier" type="{urn:gs1:shared:shared_common:xsd:3}IdentifierType"/>
 *         &lt;element name="dangerousGoodsShippingName" type="{urn:gs1:shared:shared_common:xsd:3}Description200Type"/>
 *         &lt;element name="dangerousGoodsTechnicalName" type="{urn:gs1:shared:shared_common:xsd:3}Description200Type" minOccurs="0"/>
 *         &lt;element name="dangerousGoodsDescription" type="{urn:gs1:shared:shared_common:xsd:3}Description1000Type" minOccurs="0"/>
 *         &lt;element name="contact" type="{urn:gs1:shared:shared_common:xsd:3}ContactType" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="dangerousGoodsRegulationInformation" type="{urn:gs1:ecom:ecom_common:xsd:3}DangerousGoodsRegulationInformationType" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "DangerousGoodsInformationType", propOrder = {
    "dangerousGoodsUNIdentifier",
    "dangerousGoodsShippingName",
    "dangerousGoodsTechnicalName",
    "dangerousGoodsDescription",
    "contact",
    "dangerousGoodsRegulationInformation"
})
public class DangerousGoodsInformationType {

    @XmlElement(required = true)
    protected IdentifierType dangerousGoodsUNIdentifier;
    @XmlElement(required = true)
    protected Description200Type dangerousGoodsShippingName;
    protected Description200Type dangerousGoodsTechnicalName;
    protected Description1000Type dangerousGoodsDescription;
    protected List<ContactType> contact;
    protected List<DangerousGoodsRegulationInformationType> dangerousGoodsRegulationInformation;

    /**
     * Gets the value of the dangerousGoodsUNIdentifier property.
     * 
     * @return
     *     possible object is
     *     {@link IdentifierType }
     *     
     */
    public IdentifierType getDangerousGoodsUNIdentifier() {
        return dangerousGoodsUNIdentifier;
    }

    /**
     * Sets the value of the dangerousGoodsUNIdentifier property.
     * 
     * @param value
     *     allowed object is
     *     {@link IdentifierType }
     *     
     */
    public void setDangerousGoodsUNIdentifier(IdentifierType value) {
        this.dangerousGoodsUNIdentifier = value;
    }

    /**
     * Gets the value of the dangerousGoodsShippingName property.
     * 
     * @return
     *     possible object is
     *     {@link Description200Type }
     *     
     */
    public Description200Type getDangerousGoodsShippingName() {
        return dangerousGoodsShippingName;
    }

    /**
     * Sets the value of the dangerousGoodsShippingName property.
     * 
     * @param value
     *     allowed object is
     *     {@link Description200Type }
     *     
     */
    public void setDangerousGoodsShippingName(Description200Type value) {
        this.dangerousGoodsShippingName = value;
    }

    /**
     * Gets the value of the dangerousGoodsTechnicalName property.
     * 
     * @return
     *     possible object is
     *     {@link Description200Type }
     *     
     */
    public Description200Type getDangerousGoodsTechnicalName() {
        return dangerousGoodsTechnicalName;
    }

    /**
     * Sets the value of the dangerousGoodsTechnicalName property.
     * 
     * @param value
     *     allowed object is
     *     {@link Description200Type }
     *     
     */
    public void setDangerousGoodsTechnicalName(Description200Type value) {
        this.dangerousGoodsTechnicalName = value;
    }

    /**
     * Gets the value of the dangerousGoodsDescription property.
     * 
     * @return
     *     possible object is
     *     {@link Description1000Type }
     *     
     */
    public Description1000Type getDangerousGoodsDescription() {
        return dangerousGoodsDescription;
    }

    /**
     * Sets the value of the dangerousGoodsDescription property.
     * 
     * @param value
     *     allowed object is
     *     {@link Description1000Type }
     *     
     */
    public void setDangerousGoodsDescription(Description1000Type value) {
        this.dangerousGoodsDescription = value;
    }

    /**
     * Gets the value of the contact property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the contact property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getContact().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link ContactType }
     * 
     * 
     */
    public List<ContactType> getContact() {
        if (contact == null) {
            contact = new ArrayList<ContactType>();
        }
        return this.contact;
    }

    /**
     * Gets the value of the dangerousGoodsRegulationInformation property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the dangerousGoodsRegulationInformation property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDangerousGoodsRegulationInformation().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link DangerousGoodsRegulationInformationType }
     * 
     * 
     */
    public List<DangerousGoodsRegulationInformationType> getDangerousGoodsRegulationInformation() {
        if (dangerousGoodsRegulationInformation == null) {
            dangerousGoodsRegulationInformation = new ArrayList<DangerousGoodsRegulationInformationType>();
        }
        return this.dangerousGoodsRegulationInformation;
    }

}
