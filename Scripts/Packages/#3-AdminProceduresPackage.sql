
---------------------------------------------------------------------------
-------------------------------INSERT ADRESS-------------------------------
CREATE OR REPLACE PACKAGE BODY adminProcedures AS
  PROCEDURE insertUserType (pcType VARCHAR2)
  IS
  BEGIN
    INSERT INTO user_type (id, name_type)
    VALUES (sUserType.NEXTVAL, pcType);
    COMMIT;
  END;
---------------------------------------------------------------------------
-------------------------------INSERT ADRESS-------------------------------
  PROCEDURE changeStatus (pnIdTest NUMBER,pcStatus VARCHAR) IS
  BEGIN
    INSERT INTO status (id, status_name)
    VALUES (pnIdTest, pcStatus);
    COMMIT;
  END;
  
---------------------------------------------------------------------------
-------------------------------INSERT STATUS------------------------------- 

 PROCEDURE insertStatus( status_name VARCHAR2) AS
 BEGIN
    INSERT INTO status(id, status_name)
    VALUES(sStatus.nextval,status_name);
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
-- Variables necesarias
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

COMMIT;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Error: Cannot insert null data. Please provide valid values.');
    WHEN OTHERS THEN
        -- Handle exceptions if any errors occur during insertion
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;


---------------------------------------------------------------------------
END adminProcedures;
/




