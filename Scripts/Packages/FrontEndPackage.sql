CREATE OR REPLACE PACKAGE frontEndPackage IS
    FUNCTION getAllContinents RETURN SYS_REFCURSOR;
    FUNCTION getContinentAmount RETURN NUMBER;
    FUNCTION getContinentId(pContinent VARCHAR2) RETURN NUMBER;
    FUNCTION getCountriesByContinentId(pIdContinent NUMBER) RETURN SYS_REFCURSOR;
    FUNCTION getCountriesByContinentName(pContinentName VARCHAR2) RETURN SYS_REFCURSOR;
    FUNCTION getCountryAmountByContinent(pContinentName VARCHAR2) RETURN NUMBER;
END frontEndPackage;