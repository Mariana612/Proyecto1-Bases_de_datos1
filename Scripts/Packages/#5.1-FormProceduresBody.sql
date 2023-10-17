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
END formProcedures;