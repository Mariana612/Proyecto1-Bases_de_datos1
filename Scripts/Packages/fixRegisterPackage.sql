CREATE OR REPLACE PACKAGE fixRegister IS
PROCEDURE insertPhone(pPhone_number NUMBER, pPhone_type VARCHAR2, person_id NUMBER);
PROCEDURE insertUser(pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,person_id NUMBER); 
PROCEDURE fixedInsert(pDisctrict VARCHAR2, pCanton VARCHAR2, pFirstname VARCHAR2,
          pMiddlename VARCHAR2, pFirstLastname VARCHAR2, pSecondLastname VARCHAR2,
          pEmail VARCHAR2, pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
          pPhone_number NUMBER, pPhone_type VARCHAR2); 
          
END fixRegister; 