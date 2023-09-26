CREATE OR REPLACE PACKAGE petProcedures IS

-- CREATE USER PROCEDURES      
PROCEDURE insertPET(pcName VARCHAR, pcPetStatus VARCHAR, pcPetType VARCHAR, 
          pcColor VARCHAR, pcBreed VARCHAR, pnChip NUMBER);
PROCEDURE insertPetPhoto(pnIdPet NUMBER, pcImagePath VARCHAR);

END petProcedures;