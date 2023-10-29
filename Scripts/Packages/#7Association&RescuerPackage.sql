CREATE OR REPLACE PACKAGE associationXRescuerPackage 
IS

PROCEDURE  insertAssociationxpet (idPet NUMBER, idAssociation NUMBER, Amount_Spen NUMBER, DateIn DATE);
PROCEDURE insertAssociation( idLegal NUMBER, associationName VARCHAR2);

PROCEDURE  insertRescuerxpet (idPet NUMBER, idRescuer NUMBER, Amount_Spen NUMBER, DateIn DATE);
PROCEDURE insertRescuer( idPhysical NUMBER);

PROCEDURE qualifyUser(idPhysical NUMBER, idCandidate NUMBER, grade NUMBER);


END associationXRescuerPackage;


