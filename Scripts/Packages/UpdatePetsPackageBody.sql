CREATE OR REPLACE PACKAGE BODY updatePetPackage AS

FUNCTION updatePetName(idPet NUMBER, newName VARCHAR2) RETURN VARCHAR2 IS
  BEGIN
    UPDATE pet
    SET pet_name = newName
    WHERE id = idPet;
    RETURN 'Pet name updated successfully';
  EXCEPTION
    WHEN OTHERS THEN
      RETURN 'Error updating pet name: ' || SQLERRM;
  END updatePetName;
------------------------------------------------------------------------------
FUNCTION updatePetChip(idPet NUMBER, newChip NUMBER) RETURN VARCHAR2 IS
    BEGIN
    UPDATE pet
    SET chip = newChip
    WHERE id = idPet;
    RETURN 'Pet chip updated successfully';
  EXCEPTION
    WHEN OTHERS THEN
      RETURN 'Error updating pet chip: ' || SQLERRM;
  END updatePetChip;
------------------------------------------------------------------------------
FUNCTION updatePetStatus(idPet NUMBER, newStatus VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
    UPDATE pet
    SET id_pet_status = petProcedures.getStatusId(newStatus)
    WHERE id = idPet;
    RETURN 'Pet status updated successfully';
  EXCEPTION
    WHEN OTHERS THEN
      RETURN 'Error updating pet status: ' || SQLERRM;
  END updatePetStatus;
------------------------------------------------------------------------------
FUNCTION updatePetType(idPet NUMBER, newType VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
    UPDATE pet
    SET id_pet_type = petProcedures.getTypeId(newType)
    WHERE id = idPet;
    RETURN 'Pet type updated successfully';
  EXCEPTION
    WHEN OTHERS THEN
      RETURN 'Error updating pet type: ' || SQLERRM;
  END updatePetType;
------------------------------------------------------------------------------
FUNCTION updatePetBreed(idPet NUMBER, newBreed VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
    UPDATE pet
    SET id_breed = petProcedures.getBreedId(newBreed)
    WHERE id = idPet;
    RETURN 'Pet breed updated successfully';
  EXCEPTION
    WHEN OTHERS THEN
      RETURN 'Error updating pet breed: ' || SQLERRM;
  END updatePetBreed;
------------------------------------------------------------------------------
FUNCTION updatePetColor(idPet NUMBER, newColor VARCHAR2) RETURN VARCHAR2 IS
    BEGIN
    UPDATE pet
    SET id_color = petProcedures.getColorId(newColor)
    WHERE id = idPet;
    RETURN 'Pet color updated successfully';
  EXCEPTION
    WHEN OTHERS THEN
      RETURN 'Error updating pet color: ' || SQLERRM;
  END updatePetColor;
------------------------------------------------------------------------------
FUNCTION updatePetAmountSpent(idPerson NUMBER, idPet NUMBER, newAmount NUMBER) RETURN VARCHAR2 IS
    vUserType VARCHAR2(20); -- Variable para almacenar el tipo de usuario
BEGIN
    -- Obtener el tipo de usuario
    SELECT up.name_type INTO vUserType
    FROM user_type up
    WHERE up.id = (SELECT id_user_type FROM user_person WHERE id = idPerson);

    IF vUserType = 'Rescuer' THEN
        UPDATE rescuerxpet
        SET amount_spent = newAmount
        WHERE id_pet = idPet AND id_rescuer = idPerson;
        RETURN 'Pet amount spent updated successfully';
    ELSIF vUserType = 'Association' THEN
        UPDATE associationxpet
        SET amount_spent = newAmount
        WHERE id_pet = idPet AND id_association = idPerson;
        RETURN 'Pet amount spent updated successfully';
    ELSE
        RETURN 'Invalid user type';
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error updating pet amount spent: ' || SQLERRM;
END updatePetAmountSpent;
------------------------------------------------------------------------------
FUNCTION updatePetDateIn(idPerson NUMBER,idPet NUMBER, newDate VARCHAR2) RETURN VARCHAR2 IS
    vUserType VARCHAR2(20); -- Variable para almacenar el tipo de usuario
BEGIN
    -- Obtener el tipo de usuario
    SELECT up.name_type INTO vUserType
    FROM user_type up
    WHERE up.id = (SELECT id_user_type FROM user_person WHERE id = idPerson);

    IF vUserType = 'Rescuer' THEN
        UPDATE rescuerxpet
        SET date_in = TO_DATE(newDate,'YYYY-MM-DD')
        WHERE id_pet = idPet AND id_rescuer = idPerson;
        RETURN 'Pet amount spent updated successfully';
    ELSIF vUserType = 'Association' THEN
        UPDATE associationxpet
        SET date_in = TO_DATE(newDate,'YYYY-MM-DD')
        WHERE id_pet = idPet AND id_association = idPerson;
        RETURN 'Pet amount spent updated successfully';
    ELSE
        RETURN 'Invalid user type';
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error updating pet amount spent: ' || SQLERRM;
END updatePetDateIn;
------------------------------------------------------------------------------
FUNCTION deletePetPhoto(idPet NUMBER, idPetPhoto NUMBER) RETURN VARCHAR2 IS
BEGIN
    DELETE FROM pet_photo
    WHERE id = idPetPhoto AND id_pet = idPet;
    RETURN 'Pet photo deleted successfully';
EXCEPTION
    WHEN OTHERS THEN
        RETURN 'Error deleting pet photo: ' || SQLERRM;
END deletePetPhoto;
------------------------------------------------------------------------------
FUNCTION getTypeUser(idPerson NUMBER) RETURN VARCHAR2 IS
    vTyped VARCHAR2(100); -- Ajusta la restricción de longitud según tus necesidades
BEGIN
    SELECT ut.name_type INTO vTyped
    FROM user_person up
    INNER JOIN user_type ut ON up.id_user_type = ut.id
    WHERE up.id_person = idPerson;
    RETURN vTyped;
END getTypeUser;
------------------------------------------------------------------------------
END updatePetPackage;
