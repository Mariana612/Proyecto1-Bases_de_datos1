CREATE OR REPLACE PACKAGE blackListPack IS 

PROCEDURE createAssociationList(pBName VARCHAR2, association_id NUMBER);

PROCEDURE createRescuerList(pBName VARCHAR2, rescuer_id NUMBER);

FUNCTION checkType(person_id NUMBER) RETURN NUMBER;

PROCEDURE createBlackList(pBname VARCHAR2, person_id NUMBER);

FUNCTION listAmountAssociation(person_id NUMBER) RETURN NUMBER;

FUNCTION listAmountRescuer(person_id NUMBER) RETURN NUMBER;

FUNCTION getAsocBlackLists(person_id NUMBER) RETURN SYS_REFCURSOR;

FUNCTION getRescBlackLists(person_id NUMBER) RETURN SYS_REFCURSOR;

FUNCTION checkPerson(pFirstname VARCHAR2, pLastname varchar2) return number;

FUNCTION getPerson(pFirst VARCHAR2, pLast VARCHAR2) RETURN NUMBER;

FUNCTION checkPhysical(pFirstName VARCHAR2,pLastname VARCHAR2) RETURN NUMBER;

PROCEDURE insertBlacklist(bList_name VARCHAR2, firstName VARCHAR2, lastname VARCHAR2);

FUNCTION getFromBlacklist(pBname VARCHAR2) RETURN SYS_REFCURSOR;


END blackListPack;