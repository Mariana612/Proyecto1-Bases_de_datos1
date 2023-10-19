CREATE OR REPLACE PACKAGE BODY userUsablePackage AS 
    FUNCTION getAllPets 
    RETURN SYS_REFCURSOR
    AS
        petsCursor SYS_REFCURSOR;
    BEGIN 
        OPEN petsCursor FOR 
        SELECT p.pet_name,ps.status_name,pt.type_name, c.color_name, b.breed_name,p.id  from pet p
        join pet_status ps ON p.id_pet_status = ps.id
        join pet_type pt ON p.id_pet_type = pt.id
        join color c on p.id_color = c.id
        join breed b on p.id_breed = b.id;
        RETURN petsCursor;
        Close petsCursor;
    END getAllPets;
    
    --=================================================
    
    FUNCTION getPetAmount
    RETURN NUMBER
    IS
    amountP NUMBER(10);
    BEGIN
        SELECT COUNT(*)
        INTO amountP
        FROM pet;
        RETURN amountP;
    
    END getPetAmount;
    
     --=================================================
    FUNCTION getUserId(pUsername VARCHAR2, pPassword VARCHAR2) RETURN NUMBER
    AS
        personId NUMBER;
    BEGIN
        select usp.id_person 
        INTO personId
        FROM user_person usp
        JOIN user_password usps ON usp.id = usps.id_user
        WHERE usp.username = pUsername AND usps.name_type = pPassword;
        RETURN personId;
        
    END;

END userUsablePackage;


