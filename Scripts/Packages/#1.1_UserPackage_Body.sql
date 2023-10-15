SET SERVEROUTPUT ON 

-------------------------
CREATE OR REPLACE PACKAGE BODY createUser AS

PROCEDURE insertJustPerson(pFirst_name VARCHAR2, pMiddle_name VARCHAR2, pFirst_lastname VARCHAR2, pSecond_lastname VARCHAR2,
                           pUsername VARCHAR2, pPassword VARCHAR2, pEmail VARCHAR2)
IS 
BEGIN
    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL, pFirst_name, pMiddle_name, pFirst_lastname, pSecond_lastname);
    createUserPerson(pUsername, pPassword); 
    insertEmail(sPerson.CURRVAL, pEmail); 
    COMMIT;
END; 

---------------------------------------------------------------------------
-------------------------------INSERT ADRESS-------------------------------
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
--continent
MERGE INTO continent c
USING (SELECT pcContinentN AS continent_name FROM dual) src
ON (c.continent_name = src.continent_name)
WHEN NOT MATCHED THEN
  INSERT (id, continent_name)
  VALUES (sContinent.NEXTVAL, src.continent_name);

--country
MERGE INTO country c
USING (SELECT pcCountryN AS country_name FROM dual) src
ON (c.country_name = src.country_name)
WHEN NOT MATCHED THEN
  INSERT (id, id_continent, COUNTRY_NAME)
  VALUES (sCountry.NEXTVAL, (SELECT id FROM continent WHERE continent_name = pcContinentN), src.country_name);

--province
MERGE INTO province p
USING (SELECT pcProvinceN AS province_name FROM dual) src
ON (p.province_name = src.province_name)
WHEN NOT MATCHED THEN
  INSERT (id, id_country, province_name)
  VALUES (sProvince.NEXTVAL, (SELECT id FROM country WHERE country_name = pcCountryN), src.province_name);

--canton 
MERGE INTO canton ct
USING (SELECT pcCantonN AS canton_name FROM dual) src
ON (ct.canton_name = src.canton_name)
WHEN NOT MATCHED THEN
  INSERT (id, id_province, canton_name)
  VALUES (sCanton.NEXTVAL, (SELECT id FROM province WHERE province_name = pcProvinceN), src.canton_name);

--district
MERGE INTO district d
USING (SELECT pcDistrictN AS district_name FROM dual) src
ON (d.district_name = src.district_name)
WHEN NOT MATCHED THEN
  INSERT (id, district_name, id_canton)
  VALUES (sDistrict.NEXTVAL, src.district_name, (SELECT id FROM canton WHERE canton_name = pcCantonN));
--  


EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Error: Cannot insert null data. Please provide valid values.');
    WHEN OTHERS THEN
        -- Handle exceptions if any errors occur during insertion
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
---------------------------------------------------------------------------
--------------------------------CREATE USER--------------------------------
PROCEDURE createUserPerson(pcUsername VARCHAR2,pcPassword VARCHAR2)
IS
BEGIN
    INSERT INTO user_person(id, id_person,username)
    VALUES (sUser.NEXTVAL, sPerson.CURRVAL, pcUsername);
  --
    INSERT INTO user_password(id, id_user,name_type)
    VALUES (sUserPassword.NEXTVAL, sUser.CURRVAL, pcPassword);
    
    INSERT INTO user_type(id_user_type, id_user, name_type)
    VALUES (sUserType.NEXTVAL, sUser.CURRVAL, 'Normal');
    COMMIT;
END;
---------------------------------------------------------------------------
-------------------------------INSERT PERSON-------------------------------
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2, 
          pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2,pcUsername VARCHAR2,pcPassword VARCHAR2,
          pcEmail VARCHAR2)
IS

BEGIN

    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL,pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
  --  
    insertAddress(pcContinentN,pcCountryN,pcProvinceN,pcCantonN,pcDistrictN);
    createUserPerson(pcUsername, pcPassword);
    insertEmail(sPerson.CURRVAL, pcEmail); 
    INSERT INTO personxdistrict (id_person, id_district)
    VALUES (sPerson.currval,
        (SELECT id FROM district WHERE district_name = pcDistrictN)
    );
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
------------------------------INSERT TELEPHONE-----------------------------
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
---------------------------------------------------------------------------
--------------------------------INSERT EMAIL-------------------------------
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2)
IS
BEGIN
    INSERT INTO email(id,id_person,email_text)
    VALUES (sEmail.NEXTVAL, pnIdPerson,pcEmailText);
    COMMIT;
END;
---------------------------------------------------------------------------
------------------------------ANSWER CANDIDATE-----------------------------
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
---------------------------------------------------------------------------
--------------------------------PHOTO STAY---------------------------------
PROCEDURE insertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_stay(id, id_candidate,picture_path)
    VALUES (sPhotoStay.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
---------------------------------------------------------------------------
-------------------------------PHOTO SLEEP---------------------------------
PROCEDURE insertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_sleep(id, id_candidate,picture_path)
    VALUES (sPhotoSleep.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------OTHER PET---------------------------------
PROCEDURE insertOtherPet(pnIdPerson NUMBER, pnYearAdopted DATE)
IS
BEGIN 
    INSERT INTO other_pet(id,id_candidate,date_adopted)
    VALUES(sOtherPet.NEXTVAL,pnIdPerson,pnYearAdopted);
    COMMIT;
END;
---------------------------------------------------------------------------
------------------------------PHOTO OTHER PET------------------------------
PROCEDURE insertPhotoOP(pnIdOtherpet NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN
    INSERT INTO photo_other_pet(id,id_otherpet,picture_path)
    VALUES (sPhotoOP.NEXTVAL,pnIdOtherpet, pcPhotoPath);
    COMMIT;
END;
END createUser;