CREATE OR REPLACE PACKAGE frontEndPackage IS
    FUNCTION getAllContinents RETURN SYS_REFCURSOR;
    FUNCTION getContinentAmount RETURN NUMBER;
    FUNCTION getContinentId(pContinent VARCHAR2) RETURN NUMBER;
    FUNCTION getCountriesByContinentId(pIdContinent NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION getCountriesByContinentName(pContinentName VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION getCountryAmountByContinent(pContinentName VARCHAR2) RETURN NUMBER;
    FUNCTION getProvincesCostaRica(pCountry VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION getCantonsProvince(pProvince VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION getCantonsProvAmount(pProvince VARCHAR2) RETURN NUMBER;
    FUNCTION getDistrictsCanton(pCanton VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION getDistrictsCNum(pCanton VARCHAR2) RETURN NUMBER;
    FUNCTION getGender  RETURN SYS_REFCURSOR;
    FUNCTION getTelTypeAmount   RETURN NUMBER;
    FUNCTION getTelTypes    RETURN SYS_REFCURSOR;
END frontEndPackage;