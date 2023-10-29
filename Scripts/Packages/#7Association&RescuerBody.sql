CREATE OR REPLACE PACKAGE BODY associationXRescuerPackage AS


PROCEDURE  insertAssociationxpet (idPet NUMBER, idAssociation NUMBER, Amount_Spen NUMBER, DateIn DATE)
    IS
    BEGIN

        INSERT INTO associationxpet(id_pet,id_association,amount_spent,date_in)
        VALUES(idPet,idAssociation,Amount_Spen,DateIn);
    
    COMMIT;
    END;

PROCEDURE insertAssociation( idLegal NUMBER, associationName VARCHAR2)
    IS
    BEGIN
        INSERT INTO association(id_legal,association_name)
        VALUES(idLegal,associationName);
    
    COMMIT;
    END;

PROCEDURE   insertRescuerxpet (idPet NUMBER, idRescuer NUMBER, Amount_Spen NUMBER, DateIn DATE)
    IS
    BEGIN

        INSERT INTO rescuerxpet(id_pet,id_rescuer,amount_spent,date_in)
        VALUES(idPet,idRescuer,Amount_Spen,DateIn);
    
    COMMIT;
    END;

PROCEDURE insertRescuer( idPhysical NUMBER)
    IS
    BEGIN
        INSERT INTO rescuer(id_physical)
        VALUES(idPhysical);
    
    COMMIT;
    END;

PROCEDURE qualifyUser(idPhysical NUMBER, idCandidate NUMBER, grade NUMBER)
AS
    vidcount NUMBER;
    vcount NUMBER;
BEGIN
    SELECT COUNT(1) INTO vidcount
    FROM adoption_form
    WHERE id_candidate = idCandidate
    AND id_association = idPhysical;
    
    if vcount > 0 THEN
      
    -- Check if the candidate is already associated with the physical association
    SELECT COUNT(1) INTO vcount
    FROM associationxcandidate
    WHERE id_candidate = idCandidate
      AND id_association = idPhysical;

    -- If there is no existing association, insert a new one
    IF vcount = 0 THEN
        INSERT INTO associationxcandidate(id_association, id_candidate, calification)
        VALUES(idPhysical, idCandidate, grade);
    else 
        -- Update the existing association's grade
        UPDATE associationxcandidate
        SET calification = grade
        WHERE id_association = idPhysical AND id_candidate = idCandidate;
        
    END IF;
    else
        SELECT COUNT(1) INTO vcount
        FROM rescuerxcandidate
        WHERE id_candidate = idCandidate
        AND id_rescuer = idPhysical;
        
        IF vcount = 0 THEN
            INSERT INTO rescuerxcandidate(id_rescuer, id_candidate, calification)
            VALUES(idPhysical, idCandidate, grade);
        ELSIF vcount > 0 THEN
            -- Update the existing association's grade
            UPDATE rescuerxcandidate
            SET calification = grade
            WHERE id_rescuer = idPhysical AND id_candidate = idCandidate;
       END IF;
    END IF;
    COMMIT;

    -- No need for COMMIT here; it should be managed at a higher level.
END qualifyUser;
END associationXRescuerPackage;

