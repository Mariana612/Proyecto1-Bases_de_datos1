CREATE OR REPLACE PACKAGE BODY createUser AS

-------------------------
------INCERT PERSON------
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2, 
          pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2)
IS
BEGIN
    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL,pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
  --
    INSERT INTO Continent(id, continent_name)
    VALUES (sContinent.NEXTVAL, pcContinentN);
  --  
    INSERT INTO Country(id, id_continent, country_name)
    VALUES (sCountry.NEXTVAL,sContinent.CURRVAL, pcCountryN);
  --  
    INSERT INTO province(id, id_country, province_name)
    VALUES (sProvince.NEXTVAL,sCountry.CURRVAL, pcProvinceN);
  --  
    INSERT INTO canton(id, id_province, canton_name)
    VALUES (sCanton.NEXTVAL,sProvince.CURRVAL, pcCantonN);
  --  
    INSERT INTO District(id, id_canton, district_name)
    VALUES (sDistrict.CURRVAL, sCanton.CURRVAL, pcDistrictN);
  --  
    INSERT INTO personxDistrict(id_person, id_district)
    VALUES (sPerson.CURRVAL, sDistrict.CURRVAL);
    COMMIT;      
END;
-------------------------
-----INCERT TELEPHONE----
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
-------INCERT EMAIL------
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
-----ANSER CANDIDATE-----
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
PROCEDURE incertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_stay(id, id_candidate,picture_path)
    VALUES (sPhotoStay.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
-------------------------
------PHOTO SLEEP--------
PROCEDURE incertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_sleep(id, id_candidate,picture_path)
    VALUES (sPhotoSleep.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
-------------------------
--------OTHER PET--------
PROCEDURE incertOtherPet(pnIdPerson NUMBER, pnYearAdopted DATE)
IS
BEGIN 
    INSERT INTO other_pet(id,id_candidate,date_adopted)
    VALUES(sOtherPet.NEXTVAL,pnIdPerson,pnYearAdopted);
    COMMIT;
END;
-------------------------
-----PHOTO OTHER PET-----
PROCEDURE incertPhotoOP(pnIdOtherpet NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN
    INSERT INTO photo_other_pet(id,id_otherpet,picture_path)
    VALUES (sPhotoOP.NEXTVAL,pnIdOtherpet, pcPhotoPath);
    COMMIT;
END;
END createUser;