CREATE OR REPLACE PACKAGE BODY blackListPack AS
    PROCEDURE createAssociationList(pBname VARCHAR2, association_id NUMBER)
    IS
    BEGIN
        INSERT INTO black_list(id, id_association, blacklist_name)
        VALUES(sBlacklist.NEXTVAL, association_id, pBname);
        COMMIT;
    END;
    
    PROCEDURE createRescuerList(pBname VARCHAR2, rescuer_id NUMBER)
    IS
    BEGIN 
        INSERT INTO black_list(id, id_rescuer, blacklist_name)
        VALUES(sBlacklist.NEXTVAL, rescuer_id, pBname);
        COMMIT;
    END;
    
    FUNCTION checkType(person_id NUMBER)
    RETURN NUMBER 
    AS
        type_check NUMBER;
    BEGIN 
        SELECT COUNT(*) INTO type_check
        FROM rescuer r 
        WHERE r.id_physical = person_id;
        
        IF type_check > 0 THEN
            RETURN 1; 
        ELSE 
            RETURN 0;
        END IF;
    END checkType;
    
    PROCEDURE createBlacklist(pBname VARCHAR2, person_id NUMBER)
    IS
        vTypeResult NUMBER;
    BEGIN
        vTypeResult := checkType(person_id);
        IF vTypeResult = 1 THEN 
            createRescuerList(pBname, person_id);
        ELSE 
            createAssociationList(pBname, person_id);
        END IF;
    END createBlackList;
    
    FUNCTION listAmountAssociation(person_id NUMBER)
    RETURN NUMBER
    IS
        list_amount NUMBER;
    BEGIN
        SELECT COUNT(*) INTO list_amount
        FROM black_list b
        WHERE b.id_association = person_id;
        RETURN list_amount;
    END listAmountAssociation;
    
    FUNCTION listAmountRescuer(person_id NUMBER)
    RETURN NUMBER
    IS
    list_amount NUMBER;
    BEGIN
        SELECT COUNT(*) INTO list_amount
        FROM black_list b
        WHERE b.id_rescuer = person_id;
        RETURN list_amount;
    END listAmountRescuer;
    
    FUNCTION getAsocBlackLists(person_id NUMBER)
    RETURN SYS_REFCURSOR
    AS
        asocBlacklists SYS_REFCURSOR;
    BEGIN
        OPEN asocBlacklists FOR
        SELECT b.blacklist_name FROM black_list b
        WHERE b.id_association = person_id;
        RETURN asocBlacklists;
        CLOSE asocBlacklists;
    END;
    
    FUNCTION getRescBlackLists(person_id NUMBER)
    RETURN SYS_REFCURSOR
    AS
        asocBlacklists SYS_REFCURSOR;
    BEGIN
        OPEN asocBlacklists FOR
        SELECT b.blacklist_name FROM black_list b
        WHERE b.id_rescuer = person_id;
        RETURN asocBlacklists;
        CLOSE asocBlacklists;
    END;
    FUNCTION checkPerson(pFirstname VARCHAR2, pLastname varchar2) return number
    as
        personResult NUMBER;
    BEGIN
        SELECT COUNT(*) INTO personResult
        FROM person p
        WHERE p.first_name = pFirstName
        AND p.first_last_name = pLastname;
        
        IF personResult > 0 THEN 
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;
    END checkPerson;
    
    FUNCTION getPerson(pFirst VARCHAR2, pLast VARCHAR2) RETURN NUMBER
    AS
        person_id NUMBER;
    BEGIN
        select p.id 
        INTO person_id
        from person p
        where p.first_name = pFirst
        AND p.first_last_name = pLast;
        RETURN person_id;
    END getPerson;
    
    FUNCTION checkPhysical(pFirstName VARCHAR2,pLastname VARCHAR2)
    RETURN NUMBER
    AS
        personResult NUMBER;
        person_id NUMBER;
        physicalResult NUMBER;
        
    BEGIN
        personResult := checkPerson(pFirstName, pLastname);
        
        IF personResult = 1 THEN 
            person_id := getPerson(pFirstName, pLastname);
            SELECT COUNT(*)
            INTO physicalResult
            FROM physical_person ph
            WHERE ph.id_physical =  person_id;
            
            IF physicalResult = 1 THEN 
                RETURN 1;
            ELSE
                RETURN 0;
            END IF;
        ELSE
            RETURN 0;
        END IF;
    END checkPhysical;
    
    PROCEDURE insertBlacklist(bList_name VARCHAR2, firstName VARCHAR2, lastname VARCHAR2)
    IS
        bList_id NUMBER;
        person_id NUMBER;
    BEGIN
        SELECT b.id
        INTO bList_id
        FROM black_list b
        WHERE b.blacklist_name = bList_name;
        
        SELECT p.id
        INTO person_id
        FROM person p
        WHERE p.first_name = firstName
        AND p.first_last_name = lastname;
        
        INSERT INTO black_listXphysical(id_physical, id_black_list)
        VALUES(person_id, bList_id);
        COMMIT;
    END insertBlacklist;
    
    FUNCTION getFromBlacklist(pBname VARCHAR2)
    RETURN SYS_REFCURSOR
    AS
        blackCursor SYS_REFCURSOR;
        list_id NUMBER;
    BEGIN
        SELECT b.id
        INTO list_id
        FROM black_list b
        WHERE b.blacklist_name = pBname;
        
        OPEN blackCursor FOR
        SELECT p.first_name, p.first_last_name
        FROM black_listXphysical n 
        INNER JOIN physical_person f
        ON n.id_physical = f.id_physical
        INNER JOIN person p
        ON f.id_physical = p.id
        WHERE n.id_black_list = list_id;
        
        RETURN blackCursor;
        CLOSE blackCursor;
    END;
        
        
END blackListPack;