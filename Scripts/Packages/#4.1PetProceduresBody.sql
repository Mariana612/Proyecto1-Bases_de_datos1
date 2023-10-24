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
FUNCTION insertPet(
  pcName VARCHAR,
  pcPetStatus VARCHAR,
  pcPetType VARCHAR,
  pcColor VARCHAR,
  pcBreed VARCHAR,
  pnChip NUMBER,
  pnPersonId NUMBER,
  pnAmountSpent NUMBER,
  pDateIn VARCHAR
) RETURN NUMBER IS
  vStatusId NUMBER;
  vBreedId NUMBER;
  vTypeId NUMBER;
  vColorId NUMBER;
  vPetId NUMBER; -- Variable para almacenar el ID de la mascota
  vUserType VARCHAR2(20); -- Variable para almacenar el tipo de usuario
BEGIN
  -- Validación de campos obligatorios
  IF pcPetStatus IS NULL OR pcPetType IS NULL OR pDateIn IS NULL THEN
    -- Devuelve un valor negativo para indicar error
    RETURN -1;
  END IF;

  -- Inicializar IDs
  vColorId := NULL;
  vBreedId := NULL;
  vStatusId := NULL;
  vTypeId := NULL;

  -- Obtener el tipo de usuario
  SELECT us.name_type INTO vUserType
  FROM user_type us
  WHERE us.id = (SELECT id_user_type FROM user_person up WHERE up.id_person = pnPersonId);

  -- Manejo de excepciones para obtener IDs
  BEGIN
    -- Obtener el ID de estado utilizando la función getStatusId
    vStatusId := getStatusId(pcPetStatus);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      -- Devuelve un valor negativo para indicar error
      RETURN -2;
  END;

  BEGIN
    vTypeId := getTypeId(pcPetType);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      -- Devuelve un valor negativo para indicar error
      RETURN -3;
  END;

  -- Comprobar si los valores de color y raza son nulos y asignar null en ese caso
  IF pcColor IS NULL THEN
    vColorId := NULL;
  ELSE
    vColorId := getColorId(pcColor);
  END IF;

  IF pcBreed IS NULL THEN
    vBreedId := NULL;
  ELSE
    vBreedId := getBreedId(pcBreed);
  END IF;

  -- Realizar la inserción en la tabla pet
  BEGIN
    INSERT INTO pet(id, CHIP, PET_NAME, ID_PERSONAL_TEST, ID_PET_STATUS, ID_PET_TYPE, ID_COLOR, ID_BREED, ID_OWNER)
    VALUES (sPet.NEXTVAL, pnChip, pcName, NULL, vStatusId, vTypeId, vColorId, vBreedId, CASE WHEN vUserType = 'Owner' THEN pnPersonId ELSE NULL END)
    RETURNING id INTO vPetId; -- Capturar el ID de la mascota recién insertada
  EXCEPTION
    WHEN OTHERS THEN
      -- Devuelve un valor negativo para indicar error
      RETURN -4;
  END;

  -- Realizar la inserción en la tabla associationxpet si el tipo de usuario es "Association"
  IF vUserType = 'Association' THEN
    associationxrescuerpackage.insertassociationxpet(vPetId,pnPersonId,pnAmountSpent,TO_DATE(pDateIn, 'YYYY-MM-DD'));
  END IF;

  -- Realizar la inserción en la tabla rescuerxpet si el tipo de usuario es "Rescuer"
  IF vUserType = 'Rescuer' THEN
    associationxrescuerpackage.insertrescuerxpet(vPetId,pnPersonId,pnAmountSpent,TO_DATE(pDateIn, 'YYYY-MM-DD'));
  END IF;

  -- COMMIT solo si no se generaron excepciones
  COMMIT;

  -- Devuelve el ID de la mascota
  RETURN vPetId;
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

------------------------------------------------------------------------
FUNCTION insertPetPhoto(pnIdPet NUMBER, pcImagePath VARCHAR2) RETURN VARCHAR2 IS
    vErrorMessage VARCHAR2(200); -- Declarar una variable para almacenar el mensaje de error
  BEGIN
    -- Inicializa el mensaje de resultado como exitoso por defecto
    vErrorMessage := 'The photo insertion was successful.';

    -- Inserta la foto en la tabla PET_PHOTO
    BEGIN
      INSERT INTO PET_PHOTO(id, id_pet, picture_path)
      VALUES(spetphoto.nextval, pnIdPet, pcImagePath);
    EXCEPTION
      WHEN OTHERS THEN
        -- Almacena el mensaje de error
        vErrorMessage := 'Error inserting the photo into the table PET_PHOTO: ' || SQLERRM;
    END;

    -- COMMIT solo si la inserci n fue exitosa
    IF vErrorMessage = 'The photo insertion was successful.' THEN
      COMMIT;
    ELSE
      -- ROLLBACK en caso de error
      ROLLBACK;
    END IF;

    -- Retorna el mensaje de resultado
    RETURN vErrorMessage;
  END insertPetPhoto;

------------------------------------------------------------------------      
PROCEDURE insertPetStatus(pcName VARCHAR)
    IS
    BEGIN
    insert into pet_status(id,status_name)
    values  (sStatus.nextval, pcName);
    END;

END petProcedures;



