CREATE OR REPLACE PACKAGE userUsablePackage IS
    FUNCTION getAllPets RETURN SYS_REFCURSOR;
    FUNCTION getPetAmount RETURN NUMBER;

END userUsablePackage;
/

SET SERVEROUTPUT ON;
DECLARE
   petsCursor SYS_REFCURSOR;
   petName VARCHAR2(100);   -- Adjust the length as per your column's datatype.
   petStatus VARCHAR2(100); -- Adjust the length as per your column's datatype.
   petType VARCHAR2(100);   -- Adjust the length as per your column's datatype.
   petColor VARCHAR2(100);  -- Adjust the length as per your column's datatype.
   petBreed VARCHAR2(100);  -- Adjust the length as per your column's datatype.
   petId NUMBER;           -- Assuming pet.id is a NUMBER type.

BEGIN
   petsCursor := userUsablePackage.getAllPets;
   LOOP
      FETCH petsCursor INTO petName, petStatus, petType, petColor, petBreed, petId;
      EXIT WHEN petsCursor%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Pet Name: ' || petName || ', Status: ' || petStatus || ', Type: ' || petType || ', Color: ' || petColor || ', Breed: ' || petBreed || ', Pet ID: ' || petId);
   END LOOP;
   CLOSE petsCursor;
END;

--
--ALTER PACKAGE userUsablePackage COMPILE;
--ALTER PACKAGE userUsablePackage COMPILE BODY;
