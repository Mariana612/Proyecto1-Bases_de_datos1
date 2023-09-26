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
  
CREATE OR REPLACE PACKAGE BODY createUser AS

-----INCERT PERSON-----
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2, 
          pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2)
IS
BEGIN
    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL(),pcFirstN, pcMiddleN, pcFirstLastN, pcFirstLastN);
  
    INSERT INTO Continent(id, continent_name)
    VALUES (sContinent.NEXTVAL, pcContinentN);
    
    INSERT INTO Country(id, id_continent, country_name)
    VALUES (sCountry.NEXTVAL,sContinent.CURRVAL, pcCountryN);
    
    INSERT INTO province(id, id_country, province_name)
    VALUES (sProvince.NEXTVAL,sCountry.CURRVAL, pcProvinceN);
    
    INSERT INTO canton(id, id_province, canton_name)
    VALUES (sCanton.NEXTVAL,sProvince.CURRVAL, pcCantonN);
    
    INSERT INTO District(id, id_canton, district_name)
    VALUES (sDistrict.CURRVAL, sCanton.CURRVAL, pcDistrictN);
    
    INSERT INTO personxDistrict(id_person, id_district)
    VALUES (sPerson.CURRVAL, sDistrict.CURRVAL);
    COMMIT;
END;
--------------------

END createUser;