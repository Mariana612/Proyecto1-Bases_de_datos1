CREATE OR REPLACE PACKAGE formProcedures 
IS
PROCEDURE insertAnswers(  idPet NUMBER,idPerson NUMBER, pcOwnHouse VARCHAR2, 
                        pcInterestAdoption VARCHAR2, 
                        pcAccompainment VARCHAR2, pcPurpose VARCHAR2, 
                        pcMinMAmount VARCHAR2,  pcMaxMAmount VARCHAR2,
                        pcAuthorization VARCHAR2);
PROCEDURE createAdoptionForm(idPet NUMBER,  idPerson NUMBER);
FUNCTION checkIfAdoptionFExists(idPet NUMBER, idPerson NUMBER)RETURN NUMBER;
FUNCTION getAnswers(idPet NUMBER) RETURN SYS_REFCURSOR;
FUNCTION getAmountAnswers(idPet NUMBER) RETURN NUMBER;
PROCEDURE updateAFStatus(idPet NUMBER, statusName VARCHAR2, idCandidate NUMBER);
PROCEDURE updateOPStatus(idPet NUMBER, statusName VARCHAR2);
FUNCTION  getAnswersPerson(idPerson NUMBER) RETURN SYS_REFCURSOR;
FUNCTION getAmountPersonAnswers(idPerson NUMBER) RETURN NUMBER;
FUNCTION checkForCandidate(idPerson NUMBER)RETURN NUMBER ;


END formProcedures;



--DECLARE
--    answersCursor SYS_REFCURSOR;
--    vpet_name VARCHAR2(20);
--    vbreed_name VARCHAR2(20);
--    vid_status NUMBER(6);
--BEGIN
--    answersCursor := formProcedures.getAnswersPerson(0); -- Replace 123 with the desired idPerson
--
--    LOOP
--        FETCH answersCursor INTO vpet_name, vbreed_name, vid_status;
--        EXIT WHEN answersCursor%NOTFOUND;
--
--        -- You can print or use the values as needed
--        DBMS_OUTPUT.PUT_LINE('Pet Name: ' || vpet_name);
--        DBMS_OUTPUT.PUT_LINE('Breed Name: ' || vbreed_name);
--        DBMS_OUTPUT.PUT_LINE('Status: ' || vid_status);
--    END LOOP;
--
--    -- Close the cursor when done.
--    CLOSE answersCursor;
--END;
--


--DECLARE
--
--    v_cursor SYS_REFCURSOR;
--    v_own_house VARCHAR2(100);
--    v_has_authorization VARCHAR2(100);
--    v_purpose VARCHAR2(100);
--    v_interest_in_adoption VARCHAR2(100);
--    v_accompaniment_average VARCHAR2(100);
--    v_minimum_monthly_amount VARCHAR2(100);
--    v_maximum_monthly_amount VARCHAR2(100);
--BEGIN
--    v_cursor := formProcedures.getAnswers(2);
--
--    LOOP
--        FETCH v_cursor INTO v_own_house, v_has_authorization, v_purpose, v_interest_in_adoption, v_accompaniment_average, v_minimum_monthly_amount, v_maximum_monthly_amount;
--        EXIT WHEN v_cursor%NOTFOUND;
--
--        -- You can print or use the values as needed
--        DBMS_OUTPUT.PUT_LINE('Own House: ' || v_own_house);
--        DBMS_OUTPUT.PUT_LINE('Has Authorization: ' || v_has_authorization);
--        DBMS_OUTPUT.PUT_LINE('Purpose: ' || v_purpose);
--        DBMS_OUTPUT.PUT_LINE('Interest in Adoption: ' || v_interest_in_adoption);
--        DBMS_OUTPUT.PUT_LINE('Accompaniment Average: ' || v_accompaniment_average);
--        DBMS_OUTPUT.PUT_LINE('Minimum Monthly Amount: ' || v_minimum_monthly_amount);
--        DBMS_OUTPUT.PUT_LINE('Maximum Monthly Amount: ' || v_maximum_monthly_amount);
--    END LOOP;
--
--    CLOSE v_cursor;
--END;
--
--select * from adoption_form;
--
--BEGIN
--    formProcedures.updateAFStatus(0,'Waiting for Response',0);
--    formProcedures.updateAFStatus(2,'En espera',6);
--    formProcedures.updateAFStatus(2,'En espera',2);
--END;