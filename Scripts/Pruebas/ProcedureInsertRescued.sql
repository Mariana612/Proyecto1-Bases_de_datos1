SET SERVEROUTPUT ON;
DECLARE
poResultMessage VARCHAR2(1000);
BEGIN
  poResultMessage := petProcedures.insertRescued(26, 'hola', 'Yes', 'Runner', 'Very challenging', 'Kennel Cough', 'Serious', 'Merced', 'San Jos�');
  DBMS_OUTPUT.PUT_LINE('Result: ' || poResultMessage);
END;

