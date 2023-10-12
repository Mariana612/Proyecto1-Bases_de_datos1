CREATE OR REPLACE PACKAGE adminProcedures AS
  PROCEDURE alterUserType (pnIdPerson NUMBER, pcType VARCHAR2);
  PROCEDURE changeStatus (pnIdTest NUMBER, pcStatus VARCHAR2);
END adminProcedures;
/
CREATE OR REPLACE PACKAGE BODY adminProcedures AS
  PROCEDURE alterUserType (pnIdPerson NUMBER, pcType VARCHAR2) IS
  BEGIN
    INSERT INTO user_type (id_user, name_type)
    VALUES (pnIdPerson, pcType);
    COMMIT;
  END alterUserType;

  PROCEDURE changeStatus (pnIdTest NUMBER, pcStatus VARCHAR2) IS
  BEGIN
    INSERT INTO status (id, status_name)
    VALUES (pnIdTest, pcStatus);
    COMMIT;
  END changeStatus;
END adminProcedures;
/
