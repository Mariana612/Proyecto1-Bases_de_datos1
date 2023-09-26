CREATE OR REPLACE PACKAGE createUser IS

-- CREATE USER PROCEDURES
PROCEDURE insertPerson (pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2, 
          pcFirstN VARCHAR2, pcMiddleN VARCHAR2, pcFirstLastN VARCHAR2, 
          pcSecondLastN VARCHAR2);
PROCEDURE insertTelephone(pnIdPerson NUMBER, pnPhoneNumber NUMBER);
PROCEDURE insertEmail(pnIdPerson NUMBER, pcEmailText VARCHAR2);
PROCEDURE createUser(pcName VARCHAR2, pcPassword VARCHAR2);         

-- FORMS PROCEDURES
PROCEDURE answerAdoptionForm(pnIdPerson NUMBER, pcOwnHouse VARCHAR, 
          pcAuthorization VARCHAR, pcPurpose VARCHAR,pcInterestAdoption VARCHAR, 
          pcAccompainmentA VARCHAR, pcMinimumMA VARCHAR, pcMaximumMA VARCHAR);
PROCEDURE incertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2);
PROCEDURE incertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2);
PROCEDURE incertOtherPet(pnIdPerson NUMBER, pnYearAdopted VARCHAR2);
PROCEDURE incertPhotoOP(pnIdPerson NUMBER, pcPhotoPath VARCHAR2);
          
END createUser;