/*
CREATE OR REPLACE PACKAGE testPack IS 

PROCEDURE addPerson(pFirst_name VARCHAR2, pMiddle_name VARCHAR2, pFirst_last_name VARCHAR2, pSecond_last_name VARCHAR2); 

END testPack; 
*/

CREATE OR REPLACE PACKAGE BODY testPack AS 
PROCEDURE addPerson(pFirst_name VARCHAR2, pMiddle_name VARCHAR2, pFirst_last_name VARCHAR2, pSecond_last_name VARCHAR2) IS 
BEGIN 
    INSERT INTO person(id, first_name, middle_name, first_last_name, second_last_name)
    VALUES (sPerson.NEXTVAL, pFirst_name, pMiddle_name, pFirst_last_name, pSecond_last_name); 
END; 

END testPack; 

