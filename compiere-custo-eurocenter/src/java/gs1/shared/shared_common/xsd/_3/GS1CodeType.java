//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.shared.shared_common.xsd._3;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlValue;
import gs1.ecom.ecom_common.xsd._3.AdministrativeUnitTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.AppointmentTimeMeasurementBasisTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.CargoTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.CreditReasonCodeType;
import gs1.ecom.ecom_common.xsd._3.CustomsWarehouseStatusCodeType;
import gs1.ecom.ecom_common.xsd._3.DangerousGoodsAttributeTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.DangerousGoodsRegulationCodeType;
import gs1.ecom.ecom_common.xsd._3.DataCarrierTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.DeliverDateTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.DeliveryTimeMeasurementBasisTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.DeliveryTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.DemandEstimationTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.DutyFeeTaxTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.EffectiveDateTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ErrorOrWarningCodeType;
import gs1.ecom.ecom_common.xsd._3.FinancialAdjustmentReasonCodeType;
import gs1.ecom.ecom_common.xsd._3.ForecastPurposeCodeType;
import gs1.ecom.ecom_common.xsd._3.ForecastTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.GoodsReceiptReportingCodeType;
import gs1.ecom.ecom_common.xsd._3.HandlingInstructionCodeType;
import gs1.ecom.ecom_common.xsd._3.HarmonizedSystemCodeType;
import gs1.ecom.ecom_common.xsd._3.IdentityDocumentTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.InventoryActivityTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.InventoryMeasurementBasisTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.InventoryMovementTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.InventoryStatusCodeType;
import gs1.ecom.ecom_common.xsd._3.InventorySubLocationFunctionCodeType;
import gs1.ecom.ecom_common.xsd._3.InventorySubLocationTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.InvoiceTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ItemScopeTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ItemTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.LegalRegistrationCodeType;
import gs1.ecom.ecom_common.xsd._3.LineItemActionCodeType;
import gs1.ecom.ecom_common.xsd._3.LocationScopeParameterTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.LocationScopeTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.LogisticEventTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.LogisticServiceReferenceTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.LogisticServiceRequirementCodeType;
import gs1.ecom.ecom_common.xsd._3.MarginSchemeCodeType;
import gs1.ecom.ecom_common.xsd._3.MaterialTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.MeasurementTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ObservationTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.OrderInstructionCodeType;
import gs1.ecom.ecom_common.xsd._3.OrderTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.OutOfStockMeasurementTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.PackageLevelCodeType;
import gs1.ecom.ecom_common.xsd._3.PackageTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.PackagingConditionCodeType;
import gs1.ecom.ecom_common.xsd._3.PackagingMarkingTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.PassengerCategoryCodeType;
import gs1.ecom.ecom_common.xsd._3.PaymentFormatCodeType;
import gs1.ecom.ecom_common.xsd._3.PaymentTermsEventCodeType;
import gs1.ecom.ecom_common.xsd._3.PerformanceMeasureTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.PeriodicityTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.PlanBucketSizeCodeType;
import gs1.ecom.ecom_common.xsd._3.PlanCommitmentLevelCodeType;
import gs1.ecom.ecom_common.xsd._3.PrintingInstructionCodeType;
import gs1.ecom.ecom_common.xsd._3.PurchaseConditionsCommitmentTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.QualityControlCodeType;
import gs1.ecom.ecom_common.xsd._3.QuantitySpecificationTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ReceivingConditionCodeType;
import gs1.ecom.ecom_common.xsd._3.RemainingQuantityStatusCodeType;
import gs1.ecom.ecom_common.xsd._3.ResponseStatusCodeType;
import gs1.ecom.ecom_common.xsd._3.SalesMeasurementTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.SealConditionCodeType;
import gs1.ecom.ecom_common.xsd._3.SealTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ServiceLevelBasisTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.ServiceLevelMeasurementBasisTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.SettlementHandlingTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.SettlementTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.SpecialServiceTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.StockRequirementTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.StructureTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.SymbolComponentCodeType;
import gs1.ecom.ecom_common.xsd._3.SynchronisationCalculationTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.TimePeriodScopeTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.TradeItemUnitDescriptorCodeType;
import gs1.ecom.ecom_common.xsd._3.TransactionalReferenceTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportInstructionStatusReasonCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportMeansTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportModeCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportPartyRoleCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportPaymentMethodCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportReferenceTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportServiceCategoryCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportServiceConditionTypeCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportServiceLevelCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportStatusConditionCodeType;
import gs1.ecom.ecom_common.xsd._3.TransportStatusReasonCodeType;
import gs1.ecom.ecom_common.xsd._3.UNLocationCodeType;
import gs1.ecom.ecom_common.xsd._3.VarianceReasonCodeType;
import gs1.ecom.ecom_common.xsd._3.WarehouseABCClassificationCodeType;


/**
 * <p>Java class for GS1CodeType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="GS1CodeType">
 *   &lt;simpleContent>
 *     &lt;extension base="&lt;urn:gs1:shared:shared_common:xsd:3>String80Type">
 *       &lt;attribute name="codeListVersion">
 *         &lt;simpleType>
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *             &lt;maxLength value="35"/>
 *             &lt;minLength value="1"/>
 *           &lt;/restriction>
 *         &lt;/simpleType>
 *       &lt;/attribute>
 *     &lt;/extension>
 *   &lt;/simpleContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GS1CodeType", propOrder = {
    "value"
})
@XmlSeeAlso({
    IncotermsCodeType.class,
    TimeMeasurementUnitCodeType.class,
    BarCodeTypeCodeType.class,
    AdditionalConsignmentIdentificationTypeCodeType.class,
    LanguageCodeType.class,
    AdditionalShipmentIdentificationTypeCodeType.class,
    AdditionalPartyIdentificationTypeCodeType.class,
    AdditionalTradeItemIdentificationTypeCodeType.class,
    MeasurementUnitCodeType.class,
    ContactTypeCodeType.class,
    CountrySubdivisionCodeType.class,
    PartyRoleCodeType.class,
    AdditionalIndividualAssetIdentificationTypeCodeType.class,
    DateFormatCodeType.class,
    CommunicationChannelCodeType.class,
    TemperatureMeasurementUnitCodeType.class,
    NutrientTypeCodeType.class,
    AdditionalServiceRelationIdentificationTypeCodeType.class,
    AdditionalLogisticUnitIdentificationTypeCodeType.class,
    CurrencyCodeType.class,
    PaymentTermsTypeCodeType.class,
    TaxCategoryCodeType.class,
    EntityTypeCodeType.class,
    AllowanceChargeTypeCodeType.class,
    FinancialAccountNumberTypeCodeType.class,
    FinancialRoutingNumberTypeCodeType.class,
    PaymentMethodCodeType.class,
    CountryCodeType.class,
    AdditionalReturnableAssetIdentificationTypeCodeType.class,
    InventoryActivityTypeCodeType.class,
    LogisticServiceRequirementCodeType.class,
    FinancialAdjustmentReasonCodeType.class,
    CargoTypeCodeType.class,
    TransportServiceConditionTypeCodeType.class,
    WarehouseABCClassificationCodeType.class,
    SettlementTypeCodeType.class,
    LogisticServiceReferenceTypeCodeType.class,
    ItemScopeTypeCodeType.class,
    PaymentFormatCodeType.class,
    TransportMeansTypeCodeType.class,
    OutOfStockMeasurementTypeCodeType.class,
    TransportInstructionStatusReasonCodeType.class,
    LogisticEventTypeCodeType.class,
    PlanBucketSizeCodeType.class,
    InventoryMeasurementBasisTypeCodeType.class,
    LegalRegistrationCodeType.class,
    AdministrativeUnitTypeCodeType.class,
    LineItemActionCodeType.class,
    InventorySubLocationTypeCodeType.class,
    DataCarrierTypeCodeType.class,
    CustomsWarehouseStatusCodeType.class,
    LocationScopeTypeCodeType.class,
    PeriodicityTypeCodeType.class,
    InventoryStatusCodeType.class,
    PackagingConditionCodeType.class,
    ServiceLevelBasisTypeCodeType.class,
    GoodsReceiptReportingCodeType.class,
    TransactionalReferenceTypeCodeType.class,
    StockRequirementTypeCodeType.class,
    TradeItemUnitDescriptorCodeType.class,
    PrintingInstructionCodeType.class,
    EffectiveDateTypeCodeType.class,
    SealConditionCodeType.class,
    ResponseStatusCodeType.class,
    PackageTypeCodeType.class,
    IdentityDocumentTypeCodeType.class,
    SealTypeCodeType.class,
    DeliveryTypeCodeType.class,
    InventorySubLocationFunctionCodeType.class,
    TransportReferenceTypeCodeType.class,
    PerformanceMeasureTypeCodeType.class,
    ObservationTypeCodeType.class,
    MaterialTypeCodeType.class,
    ForecastPurposeCodeType.class,
    InventoryMovementTypeCodeType.class,
    DangerousGoodsAttributeTypeCodeType.class,
    DemandEstimationTypeCodeType.class,
    DangerousGoodsRegulationCodeType.class,
    TransportStatusReasonCodeType.class,
    DeliveryTimeMeasurementBasisTypeCodeType.class,
    PurchaseConditionsCommitmentTypeCodeType.class,
    SalesMeasurementTypeCodeType.class,
    MeasurementTypeCodeType.class,
    CreditReasonCodeType.class,
    PackageLevelCodeType.class,
    DeliverDateTypeCodeType.class,
    UNLocationCodeType.class,
    VarianceReasonCodeType.class,
    MarginSchemeCodeType.class,
    QuantitySpecificationTypeCodeType.class,
    TransportPartyRoleCodeType.class,
    PaymentTermsEventCodeType.class,
    TransportPaymentMethodCodeType.class,
    SynchronisationCalculationTypeCodeType.class,
    ReceivingConditionCodeType.class,
    SettlementHandlingTypeCodeType.class,
    PassengerCategoryCodeType.class,
    TransportServiceLevelCodeType.class,
    DutyFeeTaxTypeCodeType.class,
    PackagingMarkingTypeCodeType.class,
    PlanCommitmentLevelCodeType.class,
    ErrorOrWarningCodeType.class,
    AppointmentTimeMeasurementBasisTypeCodeType.class,
    StructureTypeCodeType.class,
    HandlingInstructionCodeType.class,
    LocationScopeParameterTypeCodeType.class,
    OrderInstructionCodeType.class,
    SpecialServiceTypeCodeType.class,
    TransportModeCodeType.class,
    SymbolComponentCodeType.class,
    ServiceLevelMeasurementBasisTypeCodeType.class,
    TransportServiceCategoryCodeType.class,
    OrderTypeCodeType.class,
    TimePeriodScopeTypeCodeType.class,
    ForecastTypeCodeType.class,
    QualityControlCodeType.class,
    InvoiceTypeCodeType.class,
    HarmonizedSystemCodeType.class,
    RemainingQuantityStatusCodeType.class,
    TransportStatusConditionCodeType.class,
    ItemTypeCodeType.class
})
public class GS1CodeType {

    @XmlValue
    protected String value;
    @XmlAttribute
    protected String codeListVersion;

    /**
     * Gets the value of the value property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getValue() {
        return value;
    }

    /**
     * Sets the value of the value property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setValue(String value) {
        this.value = value;
    }

    /**
     * Gets the value of the codeListVersion property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCodeListVersion() {
        return codeListVersion;
    }

    /**
     * Sets the value of the codeListVersion property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCodeListVersion(String value) {
        this.codeListVersion = value;
    }

}
