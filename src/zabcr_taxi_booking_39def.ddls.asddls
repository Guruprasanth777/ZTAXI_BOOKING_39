@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZABCTAXI_BOOKING_39DEF'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZABCR_TAXI_BOOKING_39DEF
  as select from ZTAXI_BOOKING_39
{
  key booking_uuid as BookingUUID,
  customer_name as CustomerName,
  pickup_location as PickupLocation,
  drop_location as DropLocation,
  driver_id as DriverID,
  vehicle_number as VehicleNumber,
  status as Status,
  booking_date as BookingDate,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  cuky_field as CukyField,
  @Semantics.amount.currencyCode: 'CukyField'
  fare_amount as FareAmount,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
