CREATE OR REPLACE PACKAGE adminProcedures IS

-- ADMIN PROCEDURES      
PROCEDURE alterUserType (pnIdPerson NUMBER, pcType VARCHAR);
PROCEDURE changeStatus (pnIdTest NUMBER,pcStatus VARCHAR); 

END adminProcedures;