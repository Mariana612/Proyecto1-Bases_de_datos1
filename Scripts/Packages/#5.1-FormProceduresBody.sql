CREATE OR REPLACE PACKAGE BODY formProcedures AS
v_candidate_count NUMBER;
PROCEDURE incertAnswers(pcFormName VARCHAR2, pcOwnHouse VARCHAR2, 
                        pcInterestAdoption VARCHAR2, 
                        pcAccompainment VARCHAR2, pcPurpose VARCHAR2, 
                        pcMinMAmount VARCHAR2,  pcMaxMAmount VARCHAR2,
                        pcAuthorization VARCHAR2,pnIdPerson NUMBER, 
                        pnIdPet NUMBER,pnIdInCharge NUMBEr)
IS
BEGIN
    -- Check if a candidate with pnIdPerson already exists
    SELECT COUNT(*)
    INTO v_candidate_count
    FROM candidate
    WHERE id_physical = pnIdPerson;

    -- If v_candidate_count is 0, no candidate with the provided id exists.
    -- In that case, insert a new candidate.
    IF v_candidate_count = 0 THEN
        INSERT INTO candidate (id_physical)
        VALUES (pnIdPerson);
    END IF;
    INSERT INTO adoption_form(id, id_candidate, id_pet, id_status, form_name,
                            own_house, has_authorization, purpose, 
                            interest_in_adoption, accompaniment_average,
                            minimum_monthly_amount,Maximum_Monthly_Amount)
    VALUES (sAdoptionForm.NEXTVAL, pnIdPerson, pnIdPet, 1, pcFormName, pcOwnHouse, 
            pcAuthorization, pcPurpose, pcInterestAdoption, pcAccompainment, 
            pcMinMAmount, pcMaxMAmount); 
            
    COMMIT;

END;

PROCEDURE createAdoptionForm(idPet NUMBER, formName VARCHAR2)
  AS
    v_idRescuer NUMBER := NULL; -- Initialize variables
    v_idAssociation NUMBER := NULL;

    BEGIN
        BEGIN
            SELECT id_rescuer
            INTO v_idRescuer
            FROM rescuerxpet
            WHERE id_pet = idPet;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                -- Handle the case where no data is found for v_idRescuer
                -- You can assign a default value or take other appropriate action.
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

        INSERT INTO adoption_form(id, id_pet, id_status, id_rescuer, id_association, form_name)
        VALUES (sAdoptionForm.NEXTVAL, idPet, 2, v_idRescuer, v_idAssociation, formName);
    END;

END formProcedures;