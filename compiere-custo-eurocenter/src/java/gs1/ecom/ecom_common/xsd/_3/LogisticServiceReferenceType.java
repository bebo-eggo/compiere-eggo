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
import gs1.shared.shared_common.xsd._3.DocumentReferenceType;


/**
 * <p>Java class for LogisticServiceReferenceType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="LogisticServiceReferenceType">
 *   &lt;complexContent>
 *     &lt;extension base="{urn:gs1:shared:shared_common:xsd:3}DocumentReferenceType">
 *       &lt;sequence>
 *         &lt;element name="logisticServiceReferenceTypeCode" type="{urn:gs1:ecom:ecom_common:xsd:3}LogisticServiceReferenceTypeCodeType"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "LogisticServiceReferenceType", propOrder = {
    "logisticServiceReferenceTypeCode"
})
public class LogisticServiceReferenceType
    extends DocumentReferenceType
{

    @XmlElement(required = true)
    protected LogisticServiceReferenceTypeCodeType logisticServiceReferenceTypeCode;

    /**
     * Gets the value of the logisticServiceReferenceTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link LogisticServiceReferenceTypeCodeType }
     *     
     */
    public LogisticServiceReferenceTypeCodeType getLogisticServiceReferenceTypeCode() {
        return logisticServiceReferenceTypeCode;
    }

    /**
     * Sets the value of the logisticServiceReferenceTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link LogisticServiceReferenceTypeCodeType }
     *     
     */
    public void setLogisticServiceReferenceTypeCode(LogisticServiceReferenceTypeCodeType value) {
        this.logisticServiceReferenceTypeCode = value;
    }

}
