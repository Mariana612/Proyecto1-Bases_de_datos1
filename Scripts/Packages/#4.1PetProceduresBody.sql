CREATE OR REPLACE PACKAGE BODY petProcedures AS
  FUNCTION getStatusId(pcStatusName VARCHAR2) RETURN NUMBER IS
    vStatusId NUMBER;
  BEGIN
    SELECT ps.id INTO vStatusId
    FROM pet_status ps
    WHERE ps.status_name = pcStatusName;
    RETURN vStatusId;
  END getStatusId;
------------------------------------------------------------------------
  FUNCTION getBreedId(pcBreedName VARCHAR2) RETURN NUMBER IS
    vBreedId NUMBER;
  BEGIN
    SELECT b.id INTO vBreedId
    FROM breed b
    WHERE b.breed_name = pcBreedName;
    RETURN vBreedId;
  END getBreedId;
------------------------------------------------------------------------
  FUNCTION getTypeId(pcTypedName VARCHAR2) RETURN NUMBER IS
    vTypedId NUMBER;
  BEGIN
    SELECT p.id INTO vTypedId
    FROM pet_type p
    WHERE p.type_name = pcTypedName;
    RETURN vTypedId;
  END getTypeId;
------------------------------------------------------------------------
  FUNCTION getColorId(pcColordName VARCHAR2) RETURN NUMBER IS
    vColordId NUMBER;
  BEGIN
    SELECT c.id INTO vColordId
    FROM color c
    WHERE c.color_name = pcColordName;
    RETURN vColordId;
  END getColorId;
------------------------------------------------------------------------
  PROCEDURE insertPET(pcName VARCHAR, pcPetStatus VARCHAR, pcPetType VARCHAR, pcColor VARCHAR, pcBreed VARCHAR, pnChip NUMBER, pResultMessage OUT VARCHAR) IS
  vStatusId NUMBER;
  vBreedId NUMBER;
  vTypedId NUMBER;
  vColordId NUMBER;
  BEGIN
  -- Inicializa el mensaje de resultado como exitoso por defecto
  pResultMessage := 'The insertion was successful.';
  vColordId := getColorId(pcColor);
  vBreedId  := getBreedId(pcBreed);
  -- Manejar excepciones
  BEGIN
    -- Obtener el ID de estado utilizando la función getStatusId
    vStatusId := getStatusId(pcPetStatus);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      pResultMessage := 'Error: Pet status not found.';
      RETURN;
  END;

  BEGIN
    vTypedId := getTypeId(pcPetType);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      pResultMessage := 'Error: Pet type not found.';
      RETURN;
  END;

  -- Realizar la inserción si no se generaron excepciones
  BEGIN
    INSERT INTO pet(id, CHIP, PET_NAME, ID_PERSONAL_TEST, ID_PET_STATUS, ID_PET_TYPE, ID_COLOR, ID_BREED, ID_OWNER)
    VALUES(sPet.NEXTVAL, pnChip, pcName, NULL, vStatusId, vTypedId, vColordId, vBreedId, NULL);
    COMMIT;
  EXCEPTION
    WHEN OTHERS THEN
      pResultMessage := 'Insertion failed.';
      ROLLBACK;
      RETURN;
  END;
END insertPet;
------------------------------------------------------------------------
FUNCTION getAllPetStatus 
    RETURN SYS_REFCURSOR
AS
    PetStatusCursor SYS_REFCURSOR;
BEGIN 
    OPEN PetStatusCursor FOR 
    SELECT status_name from pet_status;
    RETURN PetStatusCursor;
END getAllPetStatus;

------------------------------------------------------------------------    
FUNCTION getBreedsByPetType(pcPetType VARCHAR2)
RETURN SYS_REFCURSOR
AS
    breedsCursor SYS_REFCURSOR;
BEGIN
    OPEN breedsCursor FOR
    SELECT b.breed_name FROM breed b
    INNER JOIN pet_type pt
    ON b.id_pet_type = pt.id
    WHERE pt.type_name = pcPetType;
    RETURN breedsCursor;
END getBreedsByPetType;
------------------------------------------------------------------------   
FUNCTION getAllPetColors 
    RETURN SYS_REFCURSOR
    AS
        petColorCursor SYS_REFCURSOR;
    BEGIN 
        OPEN petColorCursor FOR 
        SELECT color_name from color;
        RETURN petColorCursor;
        CLOSE petColorCursor;
    END getAllPetColors;
------------------------------------------------------------------------      
FUNCTION getAllPetTypes 
    RETURN SYS_REFCURSOR
    AS
        petTypeCursor SYS_REFCURSOR;
    BEGIN 
        OPEN petTypeCursor FOR 
        SELECT type_name from pet_type;
        RETURN petTypeCursor;
        CLOSE petTypeCursor;
    END getAllPetTypes;
END petProcedures;
/


