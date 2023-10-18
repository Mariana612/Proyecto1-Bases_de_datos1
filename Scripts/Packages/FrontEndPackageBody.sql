CREATE OR REPLACE PACKAGE BODY frontEndPackage AS 
    FUNCTION getAllContinents 
    RETURN SYS_REFCURSOR
    AS
        continentsCursor SYS_REFCURSOR;
    BEGIN 
        OPEN continentsCursor FOR 
        SELECT continent_name from continent;
        RETURN continentscursor;
        CLOSE continentsCursor;
    END getAllContinents;
    
    --=================================================
    
    FUNCTION getContinentAmount
    RETURN NUMBER
    IS
    amountC NUMBER(10);
    BEGIN
        SELECT COUNT(*)
        INTO amountC
        FROM continent;
        RETURN amountC;
    
    END getContinentAmount;
    --=================================================
    FUNCTION getContinentId(pContinent VARCHAR2)
    RETURN NUMBER 
    IS
    vIdContinent NUMBER(10);
    BEGIN
        SELECT id 
        INTO vIdContinent
        FROM continent
        WHERE continent_name = pContinent;
        RETURN vIdContinent;
    END getContinentId;
    
    --=================================================

    FUNCTION getCountriesByContinentId(pIdContinent NUMBER)
    RETURN SYS_REFCURSOR
    AS
        countriesCursor SYS_REFCURSOR;
    BEGIN
        OPEN countriesCursor FOR
        SELECT country_name FROM country
        WHERE id_continent = pIdContinent;
        RETURN countriesCursor;
    END getCountriesByContinentId;
    
    --=================================================
    
    FUNCTION getCountriesByContinentName(pContinentName VARCHAR2)
    RETURN SYS_REFCURSOR
    AS 
        countriesCursor SYS_REFCURSOR;
    BEGIN
        OPEN countriesCursor FOR
        SELECT p.country_name FROM country p
        INNER JOIN continent c
        ON p.id_continent = c.id
        WHERE c.continent_name = pContinentName;
        RETURN countriesCursor; 
        CLOSE countriesCursor;
    END getCountriesByContinentName;
    
    --=================================================
    
    FUNCTION getCountryAmountByContinent(pContinentName VARCHAR2)
    RETURN NUMBER
    IS
        vCountries NUMBER(10); 
    BEGIN 
        SELECT COUNT(*)
        INTO vCountries
        FROM country p 
        INNER JOIN continent c
        ON p.id_continent = c.id
        WHERE c.continent_name = pContinentName; 
        RETURN vCountries;
    END getCountryAmountByContinent;
    
    FUNCTION getProvincesCostaRica(pCountry VARCHAR2)
    RETURN SYS_REFCURSOR
    AS
        costaRicanCursor SYS_REFCURSOR;
    BEGIN
        OPEN costaRicanCursor FOR 
        SELECT p.province_name FROM province p
        INNER JOIN country c
        ON p.id_country = c.id
        WHERE c.country_name = pCountry;
        RETURN costaRicanCursor;
        CLOSE costaRicanCursor;
    END getProvincesCostaRica;
    
    FUNCTION getCantonsProvince(pProvince VARCHAR2)
    RETURN SYS_REFCURSOR
    AS
        cantonCursor SYS_REFCURSOR;
    BEGIN 
        OPEN cantonCursor FOR
        SELECT c.canton_name FROM canton c 
        INNER JOIN province p
        ON c.id_province = p.id
        WHERE p.province_name = pProvince;
        RETURN cantonCursor;
        CLOSE cantonCursor;
    END getCantonsProvince;
    
/*
    vIdContinent NUMBER(10);
    BEGIN
        SELECT id 
        INTO vIdContinent
        FROM continent
        WHERE continent_name = pContinent;
        RETURN vIdContinent;
    END getContinentId;
*/
    FUNCTION getCantonsProvAmount(pProvince VARCHAR2)
    RETURN NUMBER 
    IS 
        vCanton NUMBER(10);
    BEGIN
        SELECT COUNT(*) 
        INTO vCanton
        FROM canton c 
        INNER JOIN province p
        ON c.id_province = p.id
        WHERE p.province_name = pProvince;
        RETURN vCanton;
    END getCantonsProvAmount;
    
    FUNCTION getDistrictsCanton(pCanton VARCHAR2)
    RETURN SYS_REFCURSOR
    AS
        districtCursor SYS_REFCURSOR;
    BEGIN
        OPEN districtCursor FOR
        SELECT d.district_name FROM district d
        INNER JOIN canton c 
        ON d.id_canton = c.id
        WHERE c.canton_name = pCanton;
        RETURN districtCursor; 
        CLOSE districtCursor;
    END getDistrictsCanton;
    
    FUNCTION getDistrictsCNum(pCanton VARCHAR2)
    RETURN NUMBER 
    IS
        vDistrict NUMBER(10);
    BEGIN
        SELECT COUNT(*)
        INTO vDistrict
        FROM district d
        INNER JOIN canton c
        ON d.id_canton = c.id
        WHERE c.canton_name = pCanton;
        RETURN vDistrict;
    END getDistrictsCNum;
    
    FUNCTION getGender
    RETURN SYS_REFCURSOR
    AS
        genderCursor SYS_REFCURSOR;
    BEGIN 
        OPEN genderCursor FOR 
        SELECT name_gender FROM gender;
        RETURN genderCursor;
        CLOSE genderCursor; 
    END getGender;
    
    FUNCTION getTelTypeAmount   
    RETURN NUMBER
    IS 
        vPhoneType NUMBER(10);
    BEGIN 
        SELECT COUNT(*)
        INTO vPhoneType
        FROM telephone_type;
        RETURN vPhoneType;
    END getTelTypeAmount;
    
    FUNCTION getTelTypes
    RETURN SYS_REFCURSOR
    AS 
        vTypesCursor SYS_REFCURSOR;
    BEGIN
        OPEN vTypesCursor FOR
        SELECT type_name FROM telephone_type;
        RETURN vTypesCursor;
        CLOSE vTypesCursor;
    END getTelTypes;
    
END frontEndPackage;