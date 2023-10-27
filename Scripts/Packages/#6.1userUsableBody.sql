CREATE OR REPLACE PACKAGE BODY userUsablePackage AS 
    FUNCTION getAllPets 
    RETURN SYS_REFCURSOR
    AS
        petsCursor SYS_REFCURSOR;
    BEGIN 
        OPEN petsCursor FOR 
        SELECT p.pet_name,ps.status_name,pt.type_name, c.color_name, b.breed_name,p.id  from pet p
        join pet_status ps ON p.id_pet_status = ps.id
        join pet_type pt ON p.id_pet_type = pt.id
        join color c on p.id_color = c.id
        join breed b on p.id_breed = b.id;
        RETURN petsCursor;
        Close petsCursor;
    END getAllPets;
    --=================================================    
    FUNCTION getAllSelectedPets(idPerson NUMBER) RETURN SYS_REFCURSOR 
    AS
        petsCursor SYS_REFCURSOR;
    BEGIN 
        OPEN petsCursor FOR 
        SELECT p.pet_name, ps.status_name, pt.type_name, c.color_name, b.breed_name, p.id
        FROM pet p
        JOIN pet_status ps ON p.id_pet_status = ps.id
        JOIN pet_type pt ON p.id_pet_type = pt.id
        JOIN color c ON p.id_color = c.id
        JOIN breed b ON p.id_breed = b.id
        WHERE p.id IN (
            SELECT rp.id_pet
            FROM RescuerXpet rp
            WHERE rp.id_rescuer = idPerson
            UNION ALL
            SELECT ap.id_pet
            FROM AssociationXpet ap
            WHERE ap.id_association = idPerson
        );
    
        RETURN petsCursor;
    END getAllSelectedPets;
    
    --=================================================
    
    FUNCTION getPetAmount
    RETURN NUMBER
    IS
    amountP NUMBER(10);
    BEGIN
        SELECT COUNT(*)
        INTO amountP
        FROM pet;
        RETURN amountP;
    
    END getPetAmount;
    --=================================================    
    FUNCTION getSelectedPetAmount(idPerson NUMBER)
    RETURN NUMBER
    IS
    amountP NUMBER(10);
    BEGIN
        SELECT COUNT(*)
        INTO amountP
        FROM pet p
        WHERE p.id IN (
            SELECT rp.id_pet
            FROM RescuerXpet rp
            WHERE rp.id_rescuer = idPerson
            UNION ALL
            SELECT ap.id_pet
            FROM AssociationXpet ap
            WHERE ap.id_association = idPerson
        );
        RETURN amountP;
    
    END getSelectedPetAmount;
    
     --=================================================
    FUNCTION getUserId(pUsername VARCHAR2, pPassword VARCHAR2) RETURN NUMBER
    AS
        personId NUMBER;
    BEGIN
        select usp.id_person 
        INTO personId
        FROM user_person usp
        JOIN user_password usps ON usp.id = usps.id_user
        WHERE usp.username = pUsername AND usps.name_type = pPassword;
        RETURN personId;
        
    END;
  
     --=================================================  
    PROCEDURE editUserType(idCandidate NUMBER, idPet NUMBER, statusName VARCHAR2) IS
    idStatus NUMBER(6);
    BEGIN
    
      select id
      into idStatus
      from status
      where status_name = statusName;
    
      UPDATE adoption_form
      SET id_status = idStatus
      WHERE id_candidate = idCandidate
        AND id_pet = idPet;
    
      COMMIT;
    EXCEPTION
      WHEN OTHERS THEN
        ROLLBACK;

END;

    --=================================================  
    PROCEDURE editUserEdited(idperson NUMBER,IDType NUMBER)
    AS
    BEGIN
    UPDATE user_person
    SET id_user_type = IDType
    WHERE id_person = idperson;
    
    COMMIT;
    
    END;
    
    --=================================================  
    FUNCTION insertFollowUp(idAdoptionForm number,vNote VARCHAR2) RETURN NUMBER
    AS
    BEGIN
    INSERT INTO follow_up(ID, ID_ADOPTION_FORM, NOTE)
    VALUES(sFollowUP.NEXTVAL,idAdoptionForm,vNote);
    
    COMMIT;
    
    RETURN sFollowUP.CURRVAL;
    
    END;
    
    --=================================================  
    PROCEDURE insertFollowUpPhoto(idFollowUo number,PICTURE_PATH VARCHAR2)
    AS
    BEGIN
    
    INSERT INTO follow_up_photo(ID, ID_FOLLOW_UP, PICTURE_PATH)
    VALUES(sFollowUPPhoto.NEXTVAL,idFollowUo,PICTURE_PATH);
    
    COMMIT;
    
    END;

END userUsablePackage;


