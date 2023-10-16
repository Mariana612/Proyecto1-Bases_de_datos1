CREATE OR REPLACE PACKAGE editUser IS

PROCEDURE changeUserType(pnidUserType NUMBER, pnIdUser NUMBER);

-- FORMS PROCEDURES
PROCEDURE answerCandidate(pnIdPerson NUMBER, pcOwnHouse VARCHAR, 
          pcAuthorization VARCHAR, pcPurpose VARCHAR,pcInterestAdoption VARCHAR, 
          pcAccompainmentA VARCHAR, pcMinimumMA VARCHAR, pcMaximumMA VARCHAR,
          pnIdTest NUMBER); ---- NO SE COMO HACER ESTE
PROCEDURE insertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2);
PROCEDURE insertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2);
PROCEDURE insertOtherPet(pnIdPerson NUMBER, pnYearAdopted DATE);
PROCEDURE insertPhotoOP(pnIdOtherpet NUMBER, pcPhotoPath VARCHAR2);

END editUser;