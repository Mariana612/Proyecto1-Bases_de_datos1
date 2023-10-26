CREATE OR REPLACE PACKAGE BODY formProcedures AS
v_candidate_count NUMBER;
PROCEDURE insertAnswers( idPet NUMBER,idPerson NUMBER, pcOwnHouse VARCHAR2, 
                        pcInterestAdoption VARCHAR2, 
                        pcAccompainment VARCHAR2, pcPurpose VARCHAR2, 
                        pcMinMAmount VARCHAR2,  pcMaxMAmount VARCHAR2,
                        pcAuthorization VARCHAR2)
AS
    v_id NUMBER;
BEGIN
    SELECT adoption_form.id
    INTO v_id
    FROM adoption_form 
    WHERE id_candidate = idPerson
    AND id_pet = idPet;
    
    UPDATE adoption_form
    SET own_house = pcOwnHouse, has_authorization = pcAuthorization, 
                    purpose = pcPurpose, interest_in_adoption = pcInterestAdoption,
                    accompaniment_average = pcAccompainment, minimum_monthly_amount = pcMinMAmount,
                    Maximum_Monthly_Amount =pcMaxMAmount
    WHERE adoption_form.id = v_id;

            
    COMMIT;

END;

PROCEDURE createAdoptionForm(idPet NUMBER,  idPerson NUMBER)
  AS
    v_idRescuer NUMBER := NULL; -- Initialize variables
    v_idAssociation NUMBER := NULL;
    v_ammount NUMBER;
   v_nameForm VARCHAR2(100); -- Adjust the length as needed

BEGIN
        SELECT pet_name || ' ' || idPerson
        INTO v_nameForm
        FROM pet
        WHERE pet.id = idPet;
    
        SELECT COUNT(1)
        INTO v_ammount
        FROM candidate
        WHERE candidate.id_physical = idPerson;
        
        IF v_ammount = 0 THEN
            INSERT INTO candidate(id_physical)
            VALUES (idPerson);
        END IF;
        
        
        
        BEGIN
            SELECT id_rescuer
            INTO v_idRescuer
            FROM rescuerxpet
            WHERE id_pet = idPet;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_idRescuer := NULL; -- Assign a default value or take other action.
        END;

        BEGIN
            SELECT id_association
            INTO v_idAssociation
            FROM associationxpet
            WHERE id_pet = idPet;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                -- Handle the case where no data is found for v_idAssociation
                -- You can assign a default value or take other appropriate action.
                v_idAssociation := NULL; -- Assign a default value or take other action.
        END;

        INSERT INTO adoption_form(id, id_candidate,id_pet, id_status, id_rescuer, id_association, form_name)
        VALUES (sAdoptionForm.NEXTVAL, idPerson, idPet, 3, v_idRescuer, v_idAssociation, v_nameForm);
        
        
    END;


    
FUNCTION checkIfAdoptionFExists(idPet NUMBER, idPerson NUMBER)RETURN NUMBER 
AS
    v_ammount NUMBER;
BEGIN
    SELECT COUNT(1)
    INTO v_ammount
    FROM adoption_form 
    WHERE id_candidate = idPerson
    AND id_pet = idPet;

    -- Set the result in the OUT parameter
    IF v_ammount > 0 THEN
        v_ammount:= 1;
    ELSE
        v_ammount:= 0;

    END IF;
    RETURN v_ammount;
    END;
    
    
FUNCTION  getAnswers(idPet NUMBER) RETURN SYS_REFCURSOR
    AS
        answersCursor SYS_REFCURSOR;
    BEGIN 
        OPEN answersCursor FOR 
        SELECT af.own_house,af.has_authorization, af.purpose, 
        af.interest_in_adoption, af.accompaniment_average, 
        af.minimum_monthly_amount, af.maximum_monthly_amount, af.id_candidate,
        af.id_status
        FROM adoption_form af
        WHERE af.id_pet = idPet;
    
        RETURN answersCursor;
    END getAnswers;
    

FUNCTION getAmountAnswers(idPet NUMBER)
    RETURN NUMBER
    IS
    amountP NUMBER(10);
    BEGIN
        SELECT COUNT(*)
        INTO amountP
        FROM Adoption_form
        WHERE id_pet = idpet;
        RETURN amountP;
    
    END getAmountAnswers;
    
PROCEDURE updateAFStatus(idPet NUMBER, statusName VARCHAR2, idCandidate NUMBER)
AS
    vnIdStatus NUMBER;

BEGIN
    -- Retrieve the ID associated with the provided statusName
    SELECT id
    INTO vnIdStatus
    FROM status
    WHERE status_name = statusName;


    -- Update the status for the given pet and person
    UPDATE adoption_form
    SET id_status = vnIdStatus
    WHERE id_pet = idPet
    AND id_candidate = idCandidate;

    COMMIT; -- Optionally commit the changes if necessary
END;

PROCEDURE updateOPStatus(idPet NUMBER, statusName VARCHAR2)
AS
    vnIdStatus NUMBER;

BEGIN
    -- Retrieve the ID associated with the provided statusName
    SELECT id
    INTO vnIdStatus
    FROM status
    WHERE status_name = statusName;


    -- Update the status for the given pet and person
    UPDATE adoption_form
    SET id_status = vnIdStatus
    WHERE id_pet = idPet and id_status = 3;

    COMMIT; -- Optionally commit the changes if necessary
END;

    

END formProcedures;