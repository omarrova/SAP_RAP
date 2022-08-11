@EndUserText.label: 'comsumption - Travel'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true 
define root view entity z_c_travel_log
  as projection on z_i_travel_log
{

  key travel_id       as TravelID,
      @ObjectModel.text.element: ['AgencyName']
      agency_id       as AgencyID,
      _Agency.Name    as AgencyName,
      @ObjectModel.text.element: ['CustomerName']
      customer_id     as CustomerID,
      _Customer.LastName as CustomerName,
      begin_date      as BeginDate,
      end_date        as EndDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      booking_fee     as BookingFee,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      total_price     as TotalPrice,
       @Semantics.currencyCode: true
      currency_code   as CurrencyCode,
      description     as Description,
      overall_status  as TravelStatus,
      last_changed_by as LastChangedAt,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child z_c_booking_log,
      _Currency,
      _Customer
}
