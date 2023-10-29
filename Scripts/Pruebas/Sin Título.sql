SET SERVEROUTPUT ON;
DECLARE
poResultMessage VARCHAR2(1000);
BEGIN
  poResultMessage := petProcedures.insertLost(14, '2020-11-10', 200, 'Dollars', 'Merced', 'San José');

  DBMS_OUTPUT.PUT_LINE('Result: ' || poResultMessage);
END;
