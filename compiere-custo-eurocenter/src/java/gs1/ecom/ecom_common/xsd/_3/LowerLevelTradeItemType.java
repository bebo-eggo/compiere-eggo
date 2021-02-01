//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.ecom.ecom_common.xsd._3;

import java.math.BigInteger;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import gs1.shared.shared_common.xsd._3.TradeItemIdentificationType;


/**
 * <p>Java class for LowerLevelTradeItemType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="LowerLevelTradeItemType">
 *   &lt;complexContent>
 *     &lt;extension base="{urn:gs1:shared:shared_common:xsd:3}TradeItemIdentificationType">
 *       &lt;sequence>
 *         &lt;element name="quantityOfLowerLevelTradeItem" type="{http://www.w3.org/2001/XMLSchema}nonNegativeInteger"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "LowerLevelTradeItemType", propOrder = {
    "quantityOfLowerLevelTradeItem"
})
public class LowerLevelTradeItemType
    extends TradeItemIdentificationType
{

    @XmlElement(required = true)
    @XmlSchemaType(name = "nonNegativeInteger")
    protected BigInteger quantityOfLowerLevelTradeItem;

    /**
     * Gets the value of the quantityOfLowerLevelTradeItem property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getQuantityOfLowerLevelTradeItem() {
        return quantityOfLowerLevelTradeItem;
    }

    /**
     * Sets the value of the quantityOfLowerLevelTradeItem property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setQuantityOfLowerLevelTradeItem(BigInteger value) {
        this.quantityOfLowerLevelTradeItem = value;
    }

}
