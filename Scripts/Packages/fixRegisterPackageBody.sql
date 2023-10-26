CREATE or replace package body fixRegister AS 

    PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2)
    IS
    BEGIN
    INSERT INTO email(id,id_person,email_text)
    VALUES (sEmail.NEXTVAL, pnIdPerson,pcEmailText);
    COMMIT;
    END;
    
    
    PROCEDURE insertAddress(personId NUMBER, pDistrict_name VARCHAR2, pCanton_name VARCHAR2)
    IS 
        vDistrictId NUMBER; 
        vCantonId NUMBER;
    BEGIN
            SELECT d.id
            INTO vDistrictId
            FROM canton c 
            INNER JOIN district d
            ON c.id = d.id_canton
            WHERE d.district_name = pDistrict_name
            AND c.canton_name = pCanton_name;
            
            INSERT INTO personXDistrict(id_person, id_district)
            VALUES(personId, vDistrictId); 
            COMMIT;
    END;
    
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
        COMMIT;
        
    END insertPhone; 
        
    PROCEDURE insertUser(pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
              person_id NUMBER)
    IS
    type_id NUMBER;
    BEGIN
        SELECT t.id 
        INTO type_id 
        FROM user_type t
        WHERE t.name_type = pUsertype;
        
        INSERT INTO user_person(id, id_person, id_user_type, username)
        VALUES(sUser.NEXTVAL, person_id, type_id, pUsername); 
        INSERT INTO user_password(id, id_user, name_type)
        VALUES(sUserpassword.NEXTVAL, sUser.CURRVAL, pPassword);
        COMMIT;
    END insertUser; 
        
    PROCEDURE registerPhysical(pDist VARCHAR2, pCanton VARCHAR2, pFirstname VARCHAR2,
          pMiddlename VARCHAR2, pFirstLastname VARCHAR2, pSecondLastname VARCHAR2,
          pEmail VARCHAR2, pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
          pPhone_number NUMBER, pPhone_type VARCHAR2, pGender VARCHAR2, pBirthDate DATE)
    IS
        gender_id NUMBER; 
    BEGIN 
        INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
        VALUES(sPerson.NEXTVAL, pFirstName, pMiddlename, pFirstLastname, pSecondLastname);
        
        insertUser(pUsername, pPassword, pUsertype, sPerson.CURRVAL);
        
        insertPhone(pPhone_number, pPhone_type, sPerson.CURRVAL); 
        
        insertAddress(sPerson.CURRVAL, pDist, pCanton);
        
        insertEmail(sPerson.CURRVAl, pEmail);
        SELECT g.id
        INTO gender_id
        FROM gender g 
        WHERE g.name_gender = pGender; 
        
        --Physical person part----------
        INSERT INTO physical_person(id_physical, id_gender, birth_date)
        VALUES(sPerson.CURRVAL, gender_id, pBirthDate);
        --------------------------------------------
        COMMIT;
    END registerPhysical; 
    
    --=============================================================
    --=======================Legal=================================
    --=============================================================

    PROCEDURE registerLegal(pDist VARCHAR, pCanton VARCHAR2, pAsocName VARCHAR2, pEmail VARCHAR2,
                        pUsername VARCHAR2, pPassword VARCHAR2, pUsertype VARCHAR2,
                        pPhone_number NUMBER, pPhone_type VARCHAR2)
    IS
    BEGIN
        INSERT INTO person(id, first_name, first_last_name)
        VALUES(sPerson.NEXTVAL, pAsocName, 'Association');
        
        insertUser(pUsername, pPassword, pUsertype, sPerson.CURRVAL);
        
        insertPhone(pPhone_number, pPhone_type, sPerson.CURRVAL);
        
        insertAddress(sPerson.CURRVAL, pDist, pCanton);
        
        insertEmail(sPerson.CURRVAL, pEmail);
        
        --Legal person
        INSERT INTO legal_person(id_legal) VALUES(sPerson.CURRVAL);
        
    END registerLegal;
END fixRegister; 