CREATE or replace package body fixRegister AS 
    PROCEDURE insertPhone(pPhone_number NUMBER, pPhone_type VARCHAR2, person_id NUMBER)
    IS
        type_id NUMBER; 
    BEGIN
        SELECT t.id 
        INTO type_id
        FROM telephone_type t 
        WHERE t.type_name = pPhone_type; 
        
    INSERT INTO telephone(id, id_telephone_type, phone_number)
            VALUES(sTelephone.NEXTVAL, type_id, pPhone_number);
    INSERT INTO telephoneXperson(id_person, id_telephone)
            VALUES(person_id, sTelephone.CURRVAL); 
        
    END insertPhone; 
        
    PROCEDURE insertUser(pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
              person_id NUMBER)
    IS
    type_id NUMBER;
    BEGIN
        select t.id 
        into type_id 
        FROM user_type t
        where t.name_type = pUsertype;
        
        INSERT INTO user_person(id, id_person, id_user_type, username)
        VALUES(sUser.NEXTVAL, person_id, type_id, pUsername); 
    END insertUser; 
        
    PROCEDURE fixedInsert(pDisctrict VARCHAR2, pCanton VARCHAR2, pFirstname VARCHAR2,
          pMiddlename VARCHAR2, pFirstLastname VARCHAR2, pSecondLastname VARCHAR2,
          pEmail VARCHAR2, pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
          pPhone_number NUMBER, pPhone_type VARCHAR2)
    IS
    BEGIN 
        INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
        VALUES(sPerson.NEXTVAL, pFirstName, pMiddlename, pFirstLastname, pSecondLastname);
        
        insertUser(pUsername, pPassword, pUsertype, sPerson.CURRVAL);
        
        insertPhone(pPhone_number, pPhone_type, sPerson.CURRVAL); 
    END fixedInsert; 
END fixRegister; 