SET SERVEROUTPUT ON 

-------------------------
CREATE OR REPLACE PACKAGE BODY createUser AS
district_idNum NUMBER;
usertype_idNum NUMBER;

---------------------------------------------------------------------------
--------------------------------CREATE USER--------------------------------
PROCEDURE createUserPerson(pcUsername VARCHAR2,pcPassword VARCHAR2,pcUserType VARCHAR2)
IS
BEGIN
    select ut.id 
    into usertype_idNum 
    from user_type ut
    where ut.name_type = pcUserType;
    
    INSERT INTO user_person(id, id_person,id_user_type,username)
    VALUES (sUser.NEXTVAL, sPerson.CURRVAL,usertype_idNum, pcUsername);
  --
    INSERT INTO user_password(id, id_user,name_type)
    VALUES (sUserPassword.NEXTVAL, sUser.CURRVAL, pcPassword);
  --
    
    COMMIT;
END;
---------------------------------------------------------------------------
-------------------------------getDistrictId-------------------------------
FUNCTION getDistrictId( pcDistrictN VARCHAR2, pcCantonN VARCHAR2, 
                        pcProvinceN VARCHAR2, pcCountryN VARCHAR2,
                        pcContinentN VARCHAR2)RETURN NUMBER
AS
    v_district_id NUMBER;
BEGIN
    -- Get the district ID using the provided parameters
    SELECT d.id
    INTO v_district_id
    FROM district d
    JOIN canton c ON d.id_canton = c.id
    JOIN province p ON c.id_province = p.id
    JOIN country co ON p.id_country = co.id
    JOIN continent cn ON co.id_continent = cn.id
    WHERE d.district_name = pcDistrictN
    AND c.canton_name = pcCantonN
    AND p.province_name = pcProvinceN
    AND co.country_name = pcCountryN
    AND cn.continent_name = pcContinentN;

    RETURN v_district_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- Handle the case where the district is not found
        RETURN NULL; -- You can return NULL or an appropriate default value
    WHEN OTHERS THEN
        -- Handle other exceptions as needed
        RAISE_APPLICATION_ERROR(-20001, 'An error occurred: ' || SQLERRM);
END;
---------------------------------------------------------------------------
-------------------------------INSERT PERSON-------------------------------
PROCEDURE insertPerson (pcDistrictN VARCHAR2,  pcFirstN VARCHAR2, 
          pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, pcSecondLastN VARCHAR2,
          pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2,idGender NUMBER)
IS
BEGIN

    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL,pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
  --  
    createUserPerson(pcUsername, pcPassword, pcUserType);
        IF pcUserType = 'Association' THEN
        INSERT INTO legal_person(id_legal)
        VALUES (sPerson.CURRVAL);
    ELSE
        INSERT INTO physical_person(id_physical,id_gender)
        VALUES (sPerson.CURRVAL,idGender);
    END IF;
    insertEmail(sPerson.CURRVAL, pcEmail); 
    
    INSERT INTO personxdistrict (id_person, id_district)
    VALUES (sPerson.currval, pcDistrictN);
    COMMIT;
EXCEPTION
    WHEN null_data_exception THEN
      DBMS_OUTPUT.PUT_LINE('Error: Cannot insert null data. Please provide valid values.');
    WHEN OTHERS THEN
        -- Handle exceptions if any errors occur during insertion
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
---------------------------------------------------------------------------
-------------------------------INSERT PERSON-------------------------------
PROCEDURE insertJustPerson (pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2,pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2, idGender NUMBER)
IS
BEGIN

    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL,pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
  --  
    createUserPerson(pcUsername, pcPassword, pcUserType);
    IF pcUserType = 'Association' THEN
        INSERT INTO legal_person(id_legal)
        VALUES (sPerson.CURRVAL);
    ELSE
        INSERT INTO physical_person(id_physical,id_gender)
        VALUES (sPerson.CURRVAL,idGender);
    END IF;
    insertEmail(sPerson.CURRVAL, pcEmail); 

    COMMIT;
EXCEPTION
    WHEN null_data_exception THEN
      DBMS_OUTPUT.PUT_LINE('Error: Cannot insert null data. Please provide valid values.');
    WHEN OTHERS THEN
        -- Handle exceptions if any errors occur during insertion
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
------------------------------INSERT TELEPHONE-----------------------------
--PROCEDURE insertTelephone(pnIdPerson NUMBER, pnPhoneNumber NUMBER)
--IS
--BEGIN
--    INSERT INTO telephone(id,phone_number)
--    VALUES (sTelephone.NEXTVAL, pnPhoneNumber);
--  --  
--    INSERT INTO telephoneXperson(id_person, id_telephone)
--    VALUES (pnIdPerson, sTelephone.CURRVAL);
--    COMMIT;
--END;
---------------------------------------------------------------------------
--------------------------------INSERT EMAIL-------------------------------
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2)
IS
BEGIN
    INSERT INTO email(id,id_person,email_text)
    VALUES (sEmail.NEXTVAL, pnIdPerson,pcEmailText);
    COMMIT;
END;
END createUser;

