CREATE OR REPLACE PACKAGE BODY loginPack AS 
    FUNCTION validateInput(pUsername IN VARCHAR2, pPassword IN VARCHAR2)
    RETURN NUMBER
    IS
    userExist NUMBER; 
    passwordExist NUMBER; 
    BEGIN
    
        SELECT COUNT(*) INTO userExist 
        FROM user_person userp
        JOIN user_password userPass ON userp.id = userpass.id_user
        WHERE userp.username = pUsername AND userpass.name_type = pPassword;
        

        
        IF userExist THEN 
            RETURN 1; 
        ELSE
            RETURN 0; 
        END IF;
    END;
    
    FUNCTION loginMain(pUsername VARCHAR2, pPassword VARCHAR2)
    RETURN VARCHAR2
    IS
    userType VARCHAR2(20);
    BEGIN
        SELECT t.name_type INTO userType
        FROM user_person u 
        INNER JOIN user_password p 
        ON u.id = p.id_user 
        INNER JOIN user_type t
        ON u.id_user_type = t.id
        WHERE u.username = pUsername AND p.name_type = pPassword;
        RETURN userType;
    END;
END loginPack;

