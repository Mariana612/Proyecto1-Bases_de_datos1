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
------------------------------------------------------------------------  
  FUNCTION getEnergyId(pcEnergy VARCHAR2) RETURN NUMBER IS
    vEnergyId NUMBER;
  BEGIN
    SELECT e.id INTO vEnergyId
    FROM energy e
    WHERE e.energy_description = pcEnergy;
    RETURN vEnergyId;
  END getEnergyId;
------------------------------------------------------------------------ 
  FUNCTION getTrainingId(pcTraining VARCHAR2) RETURN NUMBER IS
    vTrainingId NUMBER;
  BEGIN
    SELECT t.id INTO vTrainingId
    FROM training t
    WHERE t.training_description = pcTraining;
    RETURN vTrainingId;
  END getTrainingId;
------------------------------------------------------------------------ 
  FUNCTION getIllnessId(pcIllness VARCHAR2) RETURN NUMBER IS
    vIllnessId NUMBER;
  BEGIN
    SELECT i.id INTO vIllnessId
    FROM illness i
    WHERE i.illness_description = pcIllness;
    RETURN vIllnessId;
  END getIllnessId;
------------------------------------------------------------------------ 
FUNCTION getTreatmentIdByIllness(pcTreatment VARCHAR2, idIllness NUMBER) RETURN NUMBER IS
    vTreatmentId NUMBER;
  BEGIN
    SELECT t.id INTO vTreatmentId
    FROM treatment t
    WHERE t.treatment_description = pcTreatment
    AND t.id_illness = idillness;
    RETURN vTreatmentId;
  END getTreatmentIdByIllness;
------------------------------------------------------------------------
  FUNCTION getSeverityId(pcSeverity VARCHAR2) RETURN NUMBER IS
    vSeverityId NUMBER;
  BEGIN
    SELECT s.id INTO vSeverityId
    FROM severity s
    WHERE s.severity_description = pcSeverity;
    RETURN vSeverityId;
  END getSeverityId;
------------------------------------------------------------------------
  FUNCTION getDistrictId(pcDistrictN VARCHAR2) RETURN NUMBER IS
    vDistricId NUMBER;
  BEGIN
    SELECT d.id INTO vDistricId
    FROM district d
    WHERE d.district_name = pcDistrictN;
    RETURN vDistricId;
  END getDistrictId;
------------------------------------------------------------------------
FUNCTION getAllEnergy 
    RETURN SYS_REFCURSOR 
AS
    EnergyCursor SYS_REFCURSOR;
BEGIN 
    OPEN EnergyCursor FOR 
    SELECT energy_description from energy;
    RETURN EnergyCursor;
END getAllEnergy;
------------------------------------------------------------------------
FUNCTION getAllTraining 
    RETURN SYS_REFCURSOR 
AS
    TrainingCursor SYS_REFCURSOR;
BEGIN 
    OPEN TrainingCursor FOR 
    SELECT training_description from training;
    RETURN TrainingCursor;
END getAllTraining;
------------------------------------------------------------------------
FUNCTION getAllIllness 
    RETURN SYS_REFCURSOR 
AS
    IllnessCursor SYS_REFCURSOR;
BEGIN 
    OPEN IllnessCursor FOR 
    SELECT Illness_description from Illness;
    RETURN IllnessCursor;
END getAllIllness;
------------------------------------------------------------------------ 
FUNCTION getTreatmentsByIllness (pcIllness VARCHAR2)
RETURN SYS_REFCURSOR
AS
    TreatmentsCursor SYS_REFCURSOR;
BEGIN
    OPEN TreatmentsCursor FOR
    SELECT t.treatment_description FROM treatment t
    INNER JOIN illness i
    ON t.id_illness = i.id
    WHERE i.illness_description = pcIllness;
    RETURN TreatmentsCursor;
END getTreatmentsByIllness;
------------------------------------------------------------------------ 
FUNCTION getAllSeverity 
    RETURN SYS_REFCURSOR 
AS
    SeverityCursor SYS_REFCURSOR;
BEGIN 
    OPEN SeverityCursor FOR 
    SELECT severity_description from severity;
    RETURN SeverityCursor;
END getAllSeverity;
------------------------------------------------------------------------
FUNCTION insertRescued(
    pnIdPet NUMBER,
    pcNotes VARCHAR,
    pcSpace VARCHAR,
    pcEnergy VARCHAR,
    pcTraining VARCHAR,
    pcIllness VARCHAR,
    pcSeverity VARCHAR,
    pcDistrictN VARCHAR2
) RETURN VARCHAR2 AS
    vEnergyId NUMBER;
    vTrainingId NUMBER;
    vSeverityId NUMBER;
    vIllnessId NUMBER;
    vDistrictId NUMBER;
    poResultMessage VARCHAR2(100);

BEGIN
    -- Inicializa el mensaje de resultado
    poResultMessage := 'Inserción exitosa'; -- Supongamos que la inserción es exitosa por defecto

    -- Verificar si pcEnergy no es nulo, y si no es nulo, obtener el ID
    IF pcEnergy IS NOT NULL THEN
        BEGIN
            vEnergyId := getEnergyId(pcEnergy);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                poResultMessage := 'Error: No se encontró el ID de energía para ' || pcEnergy;
                RETURN poResultMessage;
        END;
    END IF;

    -- Verificar si pcTraining no es nulo, y si no es nulo, obtener el ID
    IF pcTraining IS NOT NULL THEN
        BEGIN
            vTrainingId := getTrainingId(pcTraining);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                poResultMessage := 'Error: No se encontró el ID de entrenamiento para ' || pcTraining;
                RETURN poResultMessage;
        END;
    END IF;

    -- Verificar si pcSeverity no es nulo, y si no es nulo, obtener el ID
    IF pcSeverity IS NOT NULL THEN
        BEGIN
            vSeverityId := getSeverityId(pcSeverity);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                poResultMessage := 'Error: No se encontró el ID de severidad para ' || pcSeverity;
                RETURN poResultMessage;
        END;
    END IF;

    -- Verificar si pcDistrictN no es nulo, y si no es nulo, obtener el ID
    IF pcDistrictN IS NOT NULL THEN
        BEGIN
            vDistrictId := getDistrictId(pcDistrictN);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                poResultMessage := 'Error: No se encontró el ID del distrito para ' || pcDistrictN;
                RETURN poResultMessage;
        END;
    END IF;

    -- Insertar en la tabla rescued
    INSERT INTO rescued(id_pet, id_energy, id_training, id_severity, id_district, notes, rescued_pet_space)
    VALUES(pnIdPet, vEnergyId, vTrainingId, vSeverityId, vDistrictId, pcNotes, pcSpace);

    -- Verificar si pcIllness no es nulo, y si no es nulo, obtener el ID
    IF pcIllness IS NOT NULL THEN
        BEGIN
            vIllnessId := getIllnessId(pcIllness);
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                poResultMessage := 'Error: No se encontró el ID de enfermedad para ' || pcIllness;
                RETURN poResultMessage;
        END;

        -- Insertar en la tabla rescuedxillness solo si pcIllness no es nulo
        INSERT INTO rescuedxillness(id_rescued, id_illness) VALUES(pnIdPet, vIllnessId);
    END IF;

    RETURN poResultMessage; -- Devolver el mensaje de resultado
END insertRescued;
------------------------------------------------------------------------
FUNCTION insertPhotoBefore(pnIdPet NUMBER, pcImagePath VARCHAR2)RETURN VARCHAR2 IS
    vErrorMessage VARCHAR2(200); -- Declarar una variable para almacenar el mensaje de error
  BEGIN
    -- Inicializa el mensaje de resultado como exitoso por defecto
    vErrorMessage := 'The photo insertion was successful.';

    -- Inserta la foto en la tabla PET_PHOTO
    BEGIN
      INSERT INTO PHOTO_BEFORE(id, id_rescued, picture_path)
      VALUES(sPhotoBefore.nextval, pnIdPet, pcImagePath);
    EXCEPTION
      WHEN OTHERS THEN
        -- Almacena el mensaje de error
        vErrorMessage := 'Error inserting the photo into the table PHOTO_BEFORE: ' || SQLERRM;
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
  END insertPhotoBefore;
------------------------------------------------------------------------
FUNCTION insertPhotoAfter(pnIdPet NUMBER, pcImagePath VARCHAR2)RETURN VARCHAR2 IS
    vErrorMessage VARCHAR2(200); -- Declarar una variable para almacenar el mensaje de error
  BEGIN
    -- Inicializa el mensaje de resultado como exitoso por defecto
    vErrorMessage := 'The photo insertion was successful.';

    -- Inserta la foto en la tabla PET_PHOTO
    BEGIN
      INSERT INTO PHOTO_AFTER(id, id_rescued, picture_path)
      VALUES(sPhotoAfter.nextval, pnIdPet, pcImagePath);
    EXCEPTION
      WHEN OTHERS THEN
        -- Almacena el mensaje de error
        vErrorMessage := 'Error inserting the photo into the table PHOTO_AFTER: ' || SQLERRM;
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
  END insertPhotoAfter;
------------------------------------------------------------------------
FUNCTION getCurrencyId(pcCurrency VARCHAR2) RETURN NUMBER IS
    vCurrencyId NUMBER;
  BEGIN
    SELECT c.id INTO vCurrencyId
    FROM currency c
    WHERE c.currency_name = pcCurrency;
    RETURN vCurrencyId;
  END getCurrencyId;
------------------------------------------------------------------------
FUNCTION insertLost(pnIdPet NUMBER, pnDateLost VARCHAR2, pnBounty NUMBER, pcCurrency VARCHAR2, pcDistrictN VARCHAR2) RETURN VARCHAR2 IS
  vCurrencyId NUMBER; -- Declare the variables with appropriate data types
  vDistrictId NUMBER;
  vErrorMessage VARCHAR2(200); -- Declare a variable to store error messages
BEGIN
  -- Check if pcCurrency is NULL and get the currency ID
  IF pcCurrency IS NULL THEN
    vCurrencyId := NULL;
  ELSE
    vCurrencyId := getCurrencyId(pcCurrency);
  END IF;
  
  -- Check if pcDistrictN is not NULL and get the district ID
  IF pcDistrictN IS NOT NULL THEN
    BEGIN
      vDistrictId := getDistrictId(pcDistrictN);
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        vErrorMessage := 'Error: District ID not found for ' || pcDistrictN;
        RETURN vErrorMessage;
    END;
  END IF;

  -- Initialize the result message as successful by default
  vErrorMessage := 'The lost pet insertion was successful.';

  -- Insert data into the lost_pet table
  INSERT INTO lost_pet(id_pet, id_currency, id_district, bounty, date_lost)
  VALUES(pnIdPet, vCurrencyId, vDistrictId, pnBounty, TO_DATE(pnDateLost, 'YYYY-MM-DD'));

  -- Return the result message
  RETURN vErrorMessage;
END insertLost;
------------------------------------------------------------------------
FUNCTION getAllCurrency RETURN SYS_REFCURSOR 
AS
    CurrencyCursor SYS_REFCURSOR;
BEGIN 
    OPEN CurrencyCursor FOR 
    SELECT currency_name from currency;
    RETURN CurrencyCursor;
END getAllCurrency;
------------------------------------------------------------------------
FUNCTION insertfound(pnIdPet NUMBER, pnDateFound VARCHAR2, pcDistrictN VARCHAR2) RETURN VARCHAR2 IS
  vDistrictId NUMBER;
  vErrorMessage VARCHAR2(200); -- Declare a variable to store error messages
BEGIN
  -- Check if pcDistrictN is not NULL and get the district ID
  IF pcDistrictN IS NOT NULL THEN
    BEGIN
      vDistrictId := getDistrictId(pcDistrictN);
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        vErrorMessage := 'Error: District ID not found for ' || pcDistrictN;
        RETURN vErrorMessage;
    END;
  END IF;

  -- Initialize the result message as successful by default
  vErrorMessage := 'The lost pet insertion was successful.';

  -- Insert data into the lost_pet table
  INSERT INTO found_pet(id_pet, date_found, id_district)
  VALUES(pnIdPet, TO_DATE(pnDateFound, 'YYYY-MM-DD'), vDistrictId);

  -- Return the result message
  RETURN vErrorMessage;
END insertfound;
------------------------------------------------------------------------
END petProcedures;


