CREATE OR REPLACE PACKAGE userUsablePackage IS
    FUNCTION getAllPets RETURN SYS_REFCURSOR;
    FUNCTION getPetAmount RETURN NUMBER;

END userUsablePackage;
/

--SET SERVEROUTPUT ON;
--DECLARE
--   petsCursor SYS_REFCURSOR;
--   petName VARCHAR2(100); -- Adjust the length as per your column's datatype.
--
---- Execute the function.
--BEGIN
--   petsCursor := userUsablePackage.getAllPets;
--   LOOP
--      FETCH petsCursor INTO petName;
--      EXIT WHEN petsCursor%NOTFOUND;
--      DBMS_OUTPUT.PUT_LINE('Pet Name: ' || petName);
--   END LOOP;
--   CLOSE petsCursor;
--END;
--
--ALTER PACKAGE userUsablePackage COMPILE;
--ALTER PACKAGE userUsablePackage COMPILE BODY;
