CLASS lhc_booking DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS calculatetotalprice FOR DETERMINE ON MODIFY
      IMPORTING keys FOR booking~calculatetotalprice.

    METHODS validatestatus FOR VALIDATE ON SAVE
      IMPORTING keys FOR booking~validatestatus.

ENDCLASS.

CLASS lhc_booking IMPLEMENTATION.

  METHOD calculatetotalprice.
  ENDMETHOD.

  METHOD validatestatus.
  ENDMETHOD.

ENDCLASS.
