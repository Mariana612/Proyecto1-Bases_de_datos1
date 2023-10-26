CREATE OR REPLACE PACKAGE fixRegister IS
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2);
PROCEDURE insertAddress(personId NUMBER, pDistrict_name VARCHAR2, pCanton_name VARCHAR2);
PROCEDURE insertPhone(pPhone_number NUMBER, pPhone_type VARCHAR2, person_id NUMBER);
PROCEDURE insertUser(pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,person_id NUMBER); 
PROCEDURE registerPhysical(pDist VARCHAR2, pCanton VARCHAR2, pFirstname VARCHAR2,
          pMiddlename VARCHAR2, pFirstLastname VARCHAR2, pSecondLastname VARCHAR2,
          pEmail VARCHAR2, pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
          pPhone_number NUMBER, pPhone_type VARCHAR2, pGender VARCHAR2, pBirthDate DATE); 
PROCEDURE registerLegal(pDist VARCHAR, pCanton VARCHAR2, pAsocName VARCHAR2, pEmail VARCHAR2,
                        pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
                        pPhone_number NUMBER, pPhone_type VARCHAR2);
END fixRegister; 

