CREATE OR REPLACE PACKAGE adminProcedures IS

   null_data_exception EXCEPTION;
   PRAGMA EXCEPTION_INIT(null_data_exception, -1400);
   
-- ADMIN PROCEDURES      
PROCEDURE insertUserType (pcType VARCHAR2);
PROCEDURE changeStatus (pnIdTest NUMBER,pcStatus VARCHAR); --- NO SE HACER ESTE
PROCEDURE insertAddress(pcContinentN   VARCHAR2, pcCountryN     VARCHAR2, 
                        pcProvinceN    VARCHAR2, pcCantonN      VARCHAR2,
                        pcDistrictN    VARCHAR2);   
PROCEDURE insertStatus(status_name VARCHAR2);

END adminProcedures;



