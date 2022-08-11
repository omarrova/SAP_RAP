CLASS lhc_travel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR travel RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR travel RESULT result.

    METHODS accepttravel FOR MODIFY
      IMPORTING keys FOR ACTION travel~accepttravel RESULT result.

    METHODS createbytemplate FOR MODIFY
      IMPORTING keys FOR ACTION travel~createbytemplate RESULT result.

    METHODS rejecttravel FOR MODIFY
      IMPORTING keys FOR ACTION travel~rejecttravel RESULT result.

    METHODS validatecustomer FOR VALIDATE ON SAVE
      IMPORTING keys FOR travel~validatecustomer.

    METHODS validatedete FOR VALIDATE ON SAVE
      IMPORTING keys FOR travel~validatedete.

    METHODS validatestatus FOR VALIDATE ON SAVE
      IMPORTING keys FOR travel~validatestatus.

ENDCLASS.

CLASS lhc_travel IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD accepttravel.
  ENDMETHOD.

  METHOD createbytemplate.


* keys[ 1 ]-
* result[ 1 ]-
* mapped-
* failed-
* reported-

    READ ENTITIES OF z_i_travel_log
    ENTITY travel
    FIELDS ( travel_id agency_id customer_id booking_fee total_price currency_code )
    WITH VALUE #( for row_key  in keys ( %key = row_key-%key ) )
    RESULT data(lt_entity_trtavel)
    failed failed
    reported reported.

*    READ ENTITy  z_i_travel_log
*    FIELDS ( travel_id agency_id customer_id booking_fee total_price currency_code )
*    WITH VALUE #( for row_key  in keys ( %key = row_key-%key ) )
*    RESULT lt_entity_trtavel
*    failed failed
*    reported reported.


CHECK failed is initial.


      ENDMETHOD.

    METHOD rejecttravel.
    ENDMETHOD.

    METHOD validatecustomer.
    ENDMETHOD.

    METHOD validatedete.
    ENDMETHOD.

    METHOD validatestatus.
    ENDMETHOD.

ENDCLASS.

CLASS lsc_Z_I_TRAVEL_LOG DEFINITION INHERITING FROM cl_abap_behavior_saver.
PROTECTED SECTION.

  METHODS save_modified REDEFINITION.

  METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z_I_TRAVEL_LOG IMPLEMENTATION.

METHOD save_modified.
ENDMETHOD.

METHOD cleanup_finalize.
ENDMETHOD.

ENDCLASS.
