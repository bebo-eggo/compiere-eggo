//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.shared.shared_common.xsd._3;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for TypedEntityIdentificationType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="TypedEntityIdentificationType">
 *   &lt;complexContent>
 *     &lt;extension base="{urn:gs1:shared:shared_common:xsd:3}EntityIdentificationType">
 *       &lt;sequence>
 *         &lt;element name="entityTypeCode" type="{urn:gs1:shared:shared_common:xsd:3}EntityTypeCodeType"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "TypedEntityIdentificationType", propOrder = {
    "entityTypeCode"
})
public class TypedEntityIdentificationType
    extends EntityIdentificationType
{

    @XmlElement(required = true)
    protected EntityTypeCodeType entityTypeCode;

    /**
     * Gets the value of the entityTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link EntityTypeCodeType }
     *     
     */
    public EntityTypeCodeType getEntityTypeCode() {
        return entityTypeCode;
    }

    /**
     * Sets the value of the entityTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link EntityTypeCodeType }
     *     
     */
    public void setEntityTypeCode(EntityTypeCodeType value) {
        this.entityTypeCode = value;
    }

}
