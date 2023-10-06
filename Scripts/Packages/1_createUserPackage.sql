CREATE OR REPLACE PACKAGE createUser IS
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2, 
          pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2); 
          
PROCEDURE insertTelephone(pnIdPerson NUMBER, pnPhoneNumber NUMBER); 

PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2); 

PROCEDURE createUser(pnIdPerson NUMBER, pcName VARCHAR2, pcPassword VARCHAR2); 

PROCEDURE answerCandidate(pnIdPerson NUMBER, pcOwnHouse VARCHAR, 
          pcAuthorization VARCHAR, pcPurpose VARCHAR,pcInterestAdoption VARCHAR, 
          pcAccompainmentA VARCHAR, pcMinimumMA VARCHAR, pcMaximumMA VARCHAR,
          pnIdTest NUMBER); 

PROCEDURE insertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2); 

PROCEDURE insertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2); 

PROCEDURE insertOtherPet(pnIdPerson NUMBER, pnYearAdopted DATE); 

PROCEDURE insertPhotoOP(pnIdOtherpet NUMBER, pcPhotoPath VARCHAR2); 

END createUser; 
          