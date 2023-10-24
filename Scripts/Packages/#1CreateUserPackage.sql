CREATE OR REPLACE PACKAGE createUser IS

   null_data_exception EXCEPTION;
   PRAGMA EXCEPTION_INIT(null_data_exception, -1400);

-- CREATE USER PROCEDURES

PROCEDURE insertPerson (pcDistrictN VARCHAR2,  pcFirstN VARCHAR2, 
          pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, pcSecondLastN VARCHAR2,
          pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2,idGender NUMBER);
FUNCTION getDistrictId( pcDistrictN VARCHAR2, pcCantonN VARCHAR2, 
                        pcProvinceN VARCHAR2, pcCountryN VARCHAR2,
                        pcContinentN VARCHAR2)return NUMBER;

--PROCEDURE insertTelephone(pnIdPerson NUMBER, pnPhoneNumber NUMBER);
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2);
PROCEDURE createUserPerson(pcUsername VARCHAR2,pcPassword VARCHAR2,pcUserType VARCHAR2) ;  
PROCEDURE insertJustPerson (pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2,pcUsername VARCHAR2,pcPassword VARCHAR2, pcEmail VARCHAR2,
          pcUserType VARCHAR2, idGender NUMBER);

END createUser;


begin 
createUser.insertJustPerson ('papa', 'francisco', 'xd', 
          'kakaka','perrito','algo', 'perrito@ajdsalkdj',
          'Normal', 1);
end;


