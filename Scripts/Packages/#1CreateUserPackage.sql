CREATE OR REPLACE PACKAGE createUser IS

   null_data_exception EXCEPTION;
   PRAGMA EXCEPTION_INIT(null_data_exception, -1400);

-- CREATE USER PROCEDURES

PROCEDURE insertRescuer(pcDistrictN VARCHAR2, pcCantonName VARCHAR2,  pcFirstN VARCHAR2, 
          pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, pcSecondLastN VARCHAR2,
          pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2,genderName VARCHAR2, phoneNumber NUMBER, phoneType VARCHAR2);
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonName VARCHAR2,  pcFirstN VARCHAR2, 
          pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, pcSecondLastN VARCHAR2,
          pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2,genderName VARCHAR2, phoneNumber NUMBER, phoneType VARCHAR2);
FUNCTION getDistrictId( pcDistrictN VARCHAR2, pcCantonN VARCHAR2, 
                        pcProvinceN VARCHAR2, pcCountryN VARCHAR2,
                        pcContinentN VARCHAR2)return NUMBER;
PROCEDURE insertAddress(personId NUMBER, pDistrict_name VARCHAR2, pCanton_name VARCHAR2);
PROCEDURE insertPhysicalPerson(pIdPerson NUMBER, pGender VARCHAR2);
PROCEDURE insertTelephone(pnIdPerson NUMBER, pnPhoneNumber NUMBER, phoneType VARCHAR2);
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2);
PROCEDURE createUserPerson(pcUsername VARCHAR2,pcPassword VARCHAR2,pcUserType VARCHAR2) ;  
PROCEDURE insertJustPerson (pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2,pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2, idGender NUMBER);


END createUser;


