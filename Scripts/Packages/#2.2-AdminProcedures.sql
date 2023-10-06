CREATE OR REPLACE PACKAGE adminProcedures 
PROCEDURE alterUserType (pnIdPerson NUMBER, pcType VARCHAR)
PROCEDURE changeStatus (pnIdTest NUMBER,pcStatus VARCHAR)
END adminProcedures; 

CREATE OR REPLACE PACKAGE BODY adminProcedures
AS

PROCEDURE alterUserType (pnIdPerson NUMBER, pcType VARCHAR)
IS
BEGIN
    INSERT INTO user_type(id_user,name_type)
    VALUES(pnIdPerson,pcType);
    COMMIT;
END;

PROCEDURE changeStatus (pnIdTest NUMBER,pcStatus VARCHAR)
IS
BEGIN
    INSERT INTO status(id,status_name)
    VALUES(pnIdPerson,pcStatus);
    COMMIT;
END;

END adminProcedures;