@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZABCTAXI_BOOKING_39DEF'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZABCC_TAXI_BOOKING_39DEF
  provider contract TRANSACTIONAL_QUERY
  as projection on ZABCR_TAXI_BOOKING_39DEF
  association [1..1] to ZABCR_TAXI_BOOKING_39DEF as _BaseEntity on $projection.BOOKINGUUID = _BaseEntity.BOOKINGUUID
{
  key BookingUUID,
  CustomerName,
  PickupLocation,
  DropLocation,
  DriverID,
  VehicleNumber,
  Status,
  BookingDate,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  CukyField,
  @Semantics: {
    Amount.Currencycode: 'CukyField'
  }
  FareAmount,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
