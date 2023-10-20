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
FUNCTION insertPET(pcName VARCHAR, pcPetStatus VARCHAR, pcPetType VARCHAR, pcColor VARCHAR, pcBreed VARCHAR, pnChip NUMBER) RETURN NUMBER;
FUNCTION insertPetPhoto(pnIdPet NUMBER, pcImagePath VARCHAR2) RETURN VARCHAR2;
PROCEDURE insertPetStatus(pcName VARCHAR);
/*PROCEDURE insertPetPhoto(pnIdPet NUMBER, pcImagePath VARCHAR2);

-- RESCUED PET PROCEDURES
PROCEDURE insertRescued(pnIdPet NUMBER, pcNotes VARCHAR, pcSpace VARCHAR, 
          pcEnergy VARCHAR, pcTraining VARCHAR, pcIllness VARCHAR, 
          pcTreatment VARCHAR, pcSeevrity VARCHAR, pcDistrictN VARCHAR2,
          pcCantonN VARCHAR2, pcProvinceN VARCHAR2, pcCountryN VARCHAR2, 
          pcContinentN VARCHAR2);
PROCEDURE insertPhotoBefore(pnIdPet NUMBER, pcImagePath VARCHAR2);
PROCEDURE insertPhotoAfter(pnIdPet NUMBER, pcImagePath VARCHAR2);

-- LOST-PET PROCEDURES
PROCEDURE insertLost(pnIdPet NUMBER, pnDateLost NUMBER, pnBounty NUMBER, 
          pcCurrency VARCHAR, pcDistrictN VARCHAR2, pcCantonN VARCHAR2,
          pcProvinceN VARCHAR2, pcCountryN VARCHAR2, pcContinentN VARCHAR2);

-- FOUND-PET PROCEDURES
PROCEDURE foundPet(pnIdPet NUMBER, pnDateFound NUMBER, pcDistrictN VARCHAR2, 
          pcCantonN VARCHAR2, pcProvinceN VARCHAR2, pcCountryN VARCHAR2, 
          pcContinentN VARCHAR2);*/
END petProcedures;


