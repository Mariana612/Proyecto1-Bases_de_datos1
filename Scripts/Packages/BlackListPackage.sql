CREATE OR REPLACE PACKAGE blackListPack IS 

PROCEDURE createAssociationList(pBName VARCHAR2, association_id NUMBER);

PROCEDURE createRescuerList(pBName VARCHAR2, rescuer_id NUMBER);

FUNCTION checkType(person_id NUMBER) RETURN NUMBER;

PROCEDURE createBlackList(pBname VARCHAR2, person_id NUMBER);

FUNCTION listAmountAssociation(person_id NUMBER) RETURN NUMBER;

FUNCTION listAmountRescuer(person_id NUMBER) RETURN NUMBER;

FUNCTION getAsocBlackLists(person_id NUMBER) RETURN SYS_REFCURSOR;

FUNCTION getRescBlackLists(person_id NUMBER) RETURN SYS_REFCURSOR;


END blackListPack;