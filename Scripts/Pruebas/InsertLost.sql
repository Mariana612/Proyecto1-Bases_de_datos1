DECLARE
  poResultMessage VARCHAR2(1000);
BEGIN
  poResultMessage := petProcedures.insertLost(12, '1990-03-15', 12345, 'Dollars', 'Carmen');
  DBMS_OUTPUT.PUT_LINE('Result: ' || poResultMessage);
END;
