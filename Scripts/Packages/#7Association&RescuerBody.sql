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

END associationXRescuerPackage;

