CREATE OR REPLACE PACKAGE formProcedures 
IS
PROCEDURE incertAnswers(pcFormName VARCHAR2, pcOwnHouse VARCHAR2, 
                        pcInterestAdoption VARCHAR2, 
                        pcAccompainment VARCHAR2, pcPurpose VARCHAR2, 
                        pcMinMAmount VARCHAR2,  pcMaxMAmount VARCHAR2,
                        pcAuthorization VARCHAR2,pnIdPerson NUMBER, 
                        pnIdPet NUMBER,pnIdInCharge NUMBEr);
                        


END formProcedures;