CREATE SEQUENCE sPerson
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;

CREATE SEQUENCE sContinent
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;

CREATE SEQUENCE sCountry
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sProvince
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sCanton
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
 CREATE SEQUENCE sDistrict
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sTelephone
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
  CREATE SEQUENCE sEmail
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sUser
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sUserPassword
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
CREATE SEQUENCE sPhotoStay
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  CREATE SEQUENCE sPhotoSleep
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  CREATE SEQUENCE sOtherPet
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  CREATE SEQUENCE sPhotoOP
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
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
    VALUES (sPerson.NEXTVAL(),pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
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
    
    INSERT INTO user_password(id, id_user,name_type)
    VALUES (sUserPassword.NEXTVAL, sUser.CURRVAL, pcPassword);
    COMMIT;
END;
-------------------------
-------PHOTO STAY--------
PROCEDURE incertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_stay(id, id_candidate,pitcutre_path)
    VALUES (sPhotoStay.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
-------------------------
------PHOTO SLEEP--------
PROCEDURE incertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_sleep(id, id_candidate,pitcutre_path)
    VALUES (sPhotoSleep.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
-------------------------

END createUser;