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
        
        
END blackListPack;