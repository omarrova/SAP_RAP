@EndUserText.label: 'comsumption - Booking Supplement'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true 
define view entity Z_C_BOOksuppl_log
  as projection on Z_I_BOOKSUPPL_LOG
{

  key travel_id                   as TravelID,
  key booking_id                  as BookingID,
  key booking_supplement_id       as BookingSupplementID,
      supplement_id               as SupplementID,
      _SupplementText.Description as SupplementDescription : localized,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      price                       as Price,
      @Semantics.currencyCode: true
      currency                    as CurrencyCode,
      /* Associations */
      last_changed_at as lastchangedat,
      _Booking : redirected to parent z_c_booking_log,
      _Product,
      _SupplementText,
      _Travel  : redirected to z_c_travel_log



}
