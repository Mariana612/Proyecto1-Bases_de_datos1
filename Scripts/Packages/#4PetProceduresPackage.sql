CREATE OR REPLACE PACKAGE petProcedures IS
--PET FUNCTIONS TO INSERT PET 
FUNCTION getStatusId(pcStatusName VARCHAR2) RETURN NUMBER;
FUNCTION getBreedId(pcBreedName VARCHAR2) RETURN NUMBER;
FUNCTION getTypeId(pcTypedName VARCHAR2) RETURN NUMBER;
FUNCTION getColorId(pcColordName VARCHAR2) RETURN NUMBER;

--PET FUNCTIONS TO FRONT END
FUNCTION getAllPetStatus RETURN SYS_REFCURSOR;
FUNCTION getBreedsByPetType(pcPetType VARCHAR2) RETURN SYS_REFCURSOR;
FUNCTION getAllPetColors RETURN SYS_REFCURSOR;
FUNCTION getAllPetTypes RETURN SYS_REFCURSOR;
-- PET PROCEDURES      
FUNCTION insertPet(pcName VARCHAR, pcPetStatus VARCHAR, pcPetType VARCHAR, pcColor VARCHAR, pcBreed VARCHAR, pnChip NUMBER,pnPersonId NUMBER, pnAmountSpent NUMBER, pDateIn VARCHAR) RETURN NUMBER;
FUNCTION insertPetPhoto(pnIdPet NUMBER, pcImagePath VARCHAR2) RETURN VARCHAR2;
PROCEDURE insertPetStatus(pcName VARCHAR);

--PET FUNCTIONS TO INSERT RESCUED
FUNCTION getEnergyId(pcEnergy VARCHAR2) RETURN NUMBER;
FUNCTION getTrainingId(pcTraining VARCHAR2) RETURN NUMBER;
FUNCTION getIllnessId(pcIllness VARCHAR2) RETURN NUMBER;
FUNCTION getTreatmentIdByIllness(pcTreatment VARCHAR2, idIllness NUMBER) RETURN NUMBER;
FUNCTION getSeverityId(pcSeverity VARCHAR2) RETURN NUMBER;
FUNCTION getDistrictId(pcDistrictN VARCHAR2) RETURN NUMBER;

--RESCUED FUNCTIONS TO FRONT END
FUNCTION getAllEnergy RETURN SYS_REFCURSOR;
FUNCTION getAllTraining RETURN SYS_REFCURSOR;
FUNCTION getAllIllness RETURN SYS_REFCURSOR;
FUNCTION getTreatmentsByIllness (pcIllness VARCHAR2) RETURN SYS_REFCURSOR;
FUNCTION getAllSeverity RETURN SYS_REFCURSOR;
-- RESCUED PET PROCEDURES
FUNCTION insertRescued(pnIdPet NUMBER,pcNotes VARCHAR,pcSpace VARCHAR,pcEnergy VARCHAR,pcTraining VARCHAR,pcIllness VARCHAR,pcSeverity VARCHAR,pcDistrictN VARCHAR2)
RETURN VARCHAR2;
FUNCTION insertPhotoBefore(pnIdPet NUMBER, pcImagePath VARCHAR2)RETURN VARCHAR2;
FUNCTION insertPhotoAfter(pnIdPet NUMBER, pcImagePath VARCHAR2)RETURN VARCHAR2;

-- LOST-PET PROCEDURES
FUNCTION getCurrencyId(pcCurrency VARCHAR2) RETURN NUMBER;
FUNCTION insertLost(pnIdPet NUMBER, pnDateLost VARCHAR2, pnBounty NUMBER, 
          pcCurrency VARCHAR2,pcDistrictN VARCHAR2) RETURN VARCHAR2;
FUNCTION getAllCurrency RETURN SYS_REFCURSOR;

-- FOUND-PET PROCEDURES
FUNCTION insertfound(pnIdPet NUMBER, pnDateFound VARCHAR2, pcDistrictN VARCHAR2) RETURN VARCHAR2;
END petProcedures;


