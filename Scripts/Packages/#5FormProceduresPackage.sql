CREATE OR REPLACE PACKAGE formProcedures 
IS
PROCEDURE incertQuestion(pcFormName VARCHAR2);
PROCEDURE incertNewForm(pcFormName VARCHAR2);
END formProcedures;