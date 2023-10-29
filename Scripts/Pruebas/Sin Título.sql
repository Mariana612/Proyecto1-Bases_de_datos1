SET SERVEROUTPUT ON;
DECLARE
poResultMessage VARCHAR2(1000);
BEGIN
  poResultMessage := petProcedures.getDistrictId('Oriental', 'Cartago');

  DBMS_OUTPUT.PUT_LINE('Result: ' || poResultMessage);
END;
