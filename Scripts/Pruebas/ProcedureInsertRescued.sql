SET SERVEROUTPUT ON;
DECLARE
poResultMessage VARCHAR2(1000);
BEGIN
  petProcedures.insertRescued(11, 'hola', 'Yes', 'Runner', 'Very challenging', 'Kennel Cough', 'Serious', 'Carmen', poResultMessage);
  DBMS_OUTPUT.PUT_LINE('Result: ' || poResultMessage);
END;

