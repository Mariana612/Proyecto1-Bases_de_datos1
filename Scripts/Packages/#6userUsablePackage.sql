CREATE OR REPLACE PACKAGE userUsablePackage IS
    FUNCTION getAllPets RETURN SYS_REFCURSOR;
    FUNCTION getPetAmount RETURN NUMBER;

END userUsablePackage;
/

DECLARE
   petsCursor SYS_REFCURSOR;
   petName VARCHAR2(100); -- Adjust the length as per your column's datatype.
   petStatus VARCHAR2(100); -- Adjust the length as per your column's datatype.
   petType VARCHAR2(100); -- Adjust the length as per your column's datatype.

-- Execute the function.
BEGIN
   petsCursor := userUsablePackage.getAllPets;
   LOOP
      FETCH petsCursor INTO petName, petStatus,petType;
      EXIT WHEN petsCursor%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Pet Name: ' || petName || ', Status: ' || petStatus || ', petype: ' || petType);
   END LOOP;
   CLOSE petsCursor;
END;
--ALTER PACKAGE userUsablePackage COMPILE;
--ALTER PACKAGE userUsablePackage COMPILE BODY;
