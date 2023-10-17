SET SERVEROUTPUT ON 

-------------------------
CREATE OR REPLACE PACKAGE BODY editUser AS
---------------------------------------------------------------------------
------------------------------CHANGE USER TYPE-----------------------------
PROCEDURE changeUserType(pnidUserType NUMBER, pnIdUser NUMBER) IS
BEGIN
    UPDATE user_person
    SET id_user_type = pnidUserType
    WHERE id = pnIdUser;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('User not found with the specified ID.');
    ELSE
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('User type changed successfully.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

---------------------------------------------------------------------------
------------------------------ANSWER CANDIDATE-----------------------------
PROCEDURE answerCandidate(pnIdPerson NUMBER, pcOwnHouse VARCHAR, 
          pcAuthorization VARCHAR, pcPurpose VARCHAR,pcInterestAdoption VARCHAR, 
          pcAccompainmentA VARCHAR, pcMinimumMA VARCHAR, pcMaximumMA VARCHAR,
          pnIdTest NUMBER)
IS
BEGIN
    INSERT INTO candidate(id_physical,id_test,own_house,has_authorization, 
                          purpose, interest_in_adoption, accompaniment_average,
                          minimum_monthly_amount, maximum_monthly_amount)
    VALUES (pnIdPerson,pnIdTest,pcOwnHouse,pcAuthorization,pcPurpose,
    pcInterestAdoption,pcAccompainmentA,pcMinimumMA,pcMaximumMA);
    COMMIT;
END;
---------------------------------------------------------------------------
--------------------------------PHOTO STAY---------------------------------
PROCEDURE insertPhotoStay(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_stay(id, id_candidate,picture_path)
    VALUES (sPhotoStay.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
---------------------------------------------------------------------------
-------------------------------PHOTO SLEEP---------------------------------
PROCEDURE insertPhotoSleep(pnIdPerson NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN 
    INSERT INTO photo_sleep(id, id_candidate,picture_path)
    VALUES (sPhotoSleep.NEXTVAL, pnIdPerson, pcPhotoPath);
    COMMIT;
END;
---------------------------------------------------------------------------
---------------------------------OTHER PET---------------------------------
PROCEDURE insertOtherPet(pnIdPerson NUMBER, pnYearAdopted DATE)
IS
BEGIN 
    INSERT INTO other_pet(id,id_candidate,date_adopted)
    VALUES(sOtherPet.NEXTVAL,pnIdPerson,pnYearAdopted);
    COMMIT;
END;
---------------------------------------------------------------------------
------------------------------PHOTO OTHER PET------------------------------
PROCEDURE insertPhotoOP(pnIdOtherpet NUMBER, pcPhotoPath VARCHAR2)
IS
BEGIN
    INSERT INTO photo_other_pet(id,id_otherpet,picture_path)
    VALUES (sPhotoOP.NEXTVAL,pnIdOtherpet, pcPhotoPath);
    COMMIT;
END;
END editUser;