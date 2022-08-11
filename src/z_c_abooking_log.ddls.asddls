@EndUserText.label: 'comsumption - Booking approval'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true 
define view entity z_c_abooking_log   as projection on Z_i_BOOKING_LOG
{

  key travel_id      as TravelID,
  key booking_id     as BookingID,
      booking_date   as BookingDate,
      customer_id    as CustomerID,
      @ObjectModel.text.element: ['CarrierName']
      carrier_id     as CarrierID,
      _Carrier.Name as CarrierName,
      connection_id  as ConnectionID,
      flight_date    as FlightDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      flight_price   as FlightPrice,
      @Semantics.currencyCode: true
      currency_code  as CurrencyCode,
      booking_status as BookingStatus,
      last_change_at as LastChangedAt,
      /* Associations */
      _Travel : redirected to parent Z_C_aTRAVEL_LOG,
      _Customer,
      _Carrier
      
}
