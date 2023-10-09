-------------------------
CREATE OR REPLACE PACKAGE BODY createUser AS
-------------------------
------INSERT ADRESS------

PROCEDURE insertAddress(
    pcContinentN   VARCHAR2,
    pcCountryN     VARCHAR2,
    pcProvinceN    VARCHAR2,
    pcCantonN      VARCHAR2,
    pcDistrictN    VARCHAR2
) AS
-- Variables que necesito
continent_id NUMBER;
country_id NUMBER;
province_id NUMBER;
canton_id NUMBER;
district_id NUMBER;

BEGIN
--======================CONTINENT================================
    -- Attempt to find an existing continent_id or use the next value from the sequence
    SELECT COALESCE((SELECT id FROM continent WHERE continent_name = pcContinentN), sContinent.NEXTVAL)
    INTO continent_id
    FROM dual;
    -- Insert the data into the continent table
    INSERT INTO continent (id, continent_name)
    VALUES (continent_id, pcContinentN);
--======================COUNTRY===================================
    -- Attempt to find an existing country_id or use the next value from the sequence
    SELECT COALESCE((SELECT id FROM country WHERE COUNTRY_NAME = pcCountryN), sCountry.NEXTVAL)
    INTO country_id
    FROM dual;
    -- Insert the data into the continent table
    INSERT INTO country (id, id_continent,COUNTRY_NAME)
    VALUES (country_id,continent_id, pcCountryN);
--========================PROVINCE================================  
    -- Attempt to find an existing province_id or use the next value from the sequence
    SELECT COALESCE((SELECT id FROM province WHERE province_name = pcProvinceN), sProvince.NEXTVAL)
    INTO province_id
    FROM dual;
    -- Insert the data into the continent table
    INSERT INTO province (id, id_country,province_name)
    VALUES (province_id,country_id, pcProvinceN);
--==========================CANTON================================   
    -- Attempt to find an existing canton_id or use the next value from the sequence
    SELECT COALESCE((SELECT id FROM canton WHERE canton_name = pcCantonN), sCanton.NEXTVAL)
    INTO canton_id
    FROM dual;
    -- Insert the data into the continent table
    INSERT INTO canton (id, id_province,canton_name)
    VALUES (canton_id,province_id, pcCantonN); 
--========================DISTRICT================================   
    -- Attempt to find an existing district_id or use the next value from the sequence
    SELECT COALESCE((SELECT id FROM district WHERE district_name = pcDistrictN), sDistrict.NEXTVAL)
    INTO district_id
    FROM dual;
    -- Insert the data into the continent table
    INSERT INTO district (id,district_name,id_canton)
    VALUES (district_id,pcDistrictN, canton_id); 

    -- Commit the transaction
    COMMIT;
--================================================================   

EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions if any errors occur during insertion
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
-------------------------
------INSERT PERSON------
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2, 
          pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2)
IS
BEGIN
    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL,pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
  --  
    insertAddress(pcContinentN,pcCountryN,pcProvinceN,pcCantonN,pcDistrictN);
    
    INSERT INTO personxdistrict (id_person, id_district)
    VALUES (sPerson.currval,
        (SELECT id FROM district WHERE district_name = pcDistrictN)
    );
    COMMIT;      
END;
-------------------------
-----INSERT TELEPHONE----
PROCEDURE insertTelephone(pnIdPerson NUMBER, pnPhoneNumber NUMBER)
IS
BEGIN
    INSERT INTO telephone(id,phone_number)
    VALUES (sTelephone.NEXTVAL, pnPhoneNumber);
  --  
    INSERT INTO telephoneXperson(id_person, id_telephone)
    VALUES (pnIdPerson, sTelephone.CURRVAL);
    COMMIT;
END;
-------------------------
-------INSERT EMAIL------
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2)
IS
BEGIN
    INSERT INTO email(id,id_person,email_text)
    VALUES (sEmail.NEXTVAL, pnIdPerson,pcEmailText);
    COMMIT;
END;
-------------------------
-------CREATE USER-------
PROCEDURE createUser(pnIdPerson NUMBER, pcName VARCHAR2, pcPassword VARCHAR2)
IS
BEGIN
    INSERT INTO user_person(id, id_person,username)
    VALUES (sUser.NEXTVAL, pnIdPerson, pcName);
  --
    INSERT INTO user_password(id, id_user,name_type)
    VALUES (sUserPassword.NEXTVAL, sUser.CURRVAL, pcPassword);
    COMMIT;
END;
-------------------------
-----ANSWER CANDIDATE-----
PROCEDURE answerCandidate(pnIdPerson NUMBER, pcOwnHouse VARCHAR, 
          pcAuthorization VARCHAR, pcPurpose VARCHAR,pcInterestAdoption VARCHAR, 
          pcAccompainmentA VARCHAR, pcMinimumMA VARCHAR, pcMaximumMA VARCHAR,
          pnIdTest NUMBER)
IS
BEGIN
    INSERT INTO candidate(id_physical,id_test,own_house,has_authorization, 
                          purpose, interest_in_adoption, accompaniment_average,
                          minimum_monthly_amount, maximum_monthly_amount)
    VALUES (pnIdPerson,pnIdTest,pcOwnHouse,pcAuthorization,pcPurpose,
    pcInterestAdoption,pcAccompainmentA,pcMinimumMA,pcMaximumMA);
    COMMIT;
END;
-------------------------
-------PHOTO STAY--------
PROCEDURE insertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_stay(id, id_candidate,picture_path)
    VALUES (sPhotoStay.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
-------------------------
------PHOTO SLEEP--------
PROCEDURE insertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_sleep(id, id_candidate,picture_path)
    VALUES (sPhotoSleep.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
-------------------------
--------OTHER PET--------
PROCEDURE insertOtherPet(pnIdPerson NUMBER, pnYearAdopted DATE)
IS
BEGIN 
    INSERT INTO other_pet(id,id_candidate,date_adopted)
    VALUES(sOtherPet.NEXTVAL,pnIdPerson,pnYearAdopted);
    COMMIT;
END;
-------------------------
-----PHOTO OTHER PET-----
PROCEDURE insertPhotoOP(pnIdOtherpet NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN
    INSERT INTO photo_other_pet(id,id_otherpet,picture_path)
    VALUES (sPhotoOP.NEXTVAL,pnIdOtherpet, pcPhotoPath);
    COMMIT;
END;
END createUser;