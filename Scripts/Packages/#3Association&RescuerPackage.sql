CREATE OR REPLACE PACKAGE petProcedures IS

-- PET PROCEDURES      
PROCEDURE insertPET(pcName VARCHAR, pcPetStatus VARCHAR, pcPetType VARCHAR, 
          pcColor VARCHAR, pcBreed VARCHAR, pnChip NUMBER);
PROCEDURE insertPetPhoto(pnIdPet NUMBER, pcImagePath VARCHAR2);

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
          pcContinentN VARCHAR2);
END petProcedures;