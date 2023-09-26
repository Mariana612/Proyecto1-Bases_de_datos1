-------------------------------------------
-------------PERSONAL_TEST-----------------
CREATE TABLE personal_test
(
       id NUMBER(6),                --PK
       test_name VARCHAR2(20) CONSTRAINT test_testName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE personal_test
ADD 
CONSTRAINT pk_personal_test PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
-------------------------------------------
--------PERSONAL_QUESTION_TEST-------------
CREATE TABLE personal_question_test
(
       id NUMBER(6),                --PK
       id_test NUMBER(6),           --FK
       answer VARCHAR2(50) CONSTRAINT PQT_answer_nn NOT NULL,
       PQT_description VARCHAR2(50) CONSTRAINT PQT_description_nn NOT NULL
);

--alters--
--PK
ALTER TABLE personal_question_test
ADD 
CONSTRAINT pk_PQT_test PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE personal_question_test
ADD CONSTRAINT FK_PQT_idTest
FOREIGN KEY (id_test) REFERENCES personal_test(id);
-------------------------------------------
-----------------PET_STATUS----------------
CREATE TABLE pet_status
(
       id NUMBER(6),                --PK
       status_name VARCHAR2(20) CONSTRAINT petStatus_statusName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE pet_status
ADD 
CONSTRAINT pk_pet_stauts PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
-------------------------------------------
------------------PET_TYPE-----------------
CREATE TABLE pet_type
(
       id NUMBER(6),       --PK
       type_name VARCHAR2(20) CONSTRAINT petType_typeName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE pet_type
ADD 
CONSTRAINT pk_pet_type PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
-------------------------------------------
-------------------COLOR-------------------
CREATE TABLE color
(
       id NUMBER(6),                --PK
       color_name VARCHAR2(20) CONSTRAINT color_colorName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE color
ADD 
CONSTRAINT pk_color PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
-------------------------------------------
-------------------BREED-------------------
CREATE TABLE breed
(
       id NUMBER(6),          --PK
       breed_name VARCHAR2(20) CONSTRAINT breed_breedName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE breed
ADD 
CONSTRAINT pk_breed PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
-------------------------------------------
--------------------PET--------------------
CREATE TABLE pet
(
       id NUMBER(6),                --PK
       chip NUMBER(6),
       pet_name VARCHAR2(20),
       
       id_personal_test NUMBER (6), --FK
       id_pet_status NUMBER (6),    --FK
       id_pet_type NUMBER (6),      --FK
       id_color NUMBER (6),         --FK
       id_breed NUMBER (6),         --FK
       id_owner NUMBER (6)          --FK
);

--alters--
--PK
ALTER TABLE pet 
ADD 
CONSTRAINT pk_pet PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE pet
ADD CONSTRAINT FK_personal_test
FOREIGN KEY (id_personal_test) REFERENCES personal_test(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_pet_status
FOREIGN KEY (id_pet_status) REFERENCES pet_status(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_pet_type
FOREIGN KEY (id_pet_type) REFERENCES pet_type(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_color
FOREIGN KEY (id_color) REFERENCES color(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_breed
FOREIGN KEY (id_breed) REFERENCES breed(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_owner
FOREIGN KEY (id_owner) REFERENCES pet_owner(id_physical);
-------------------------------------------
-----------------PET_PHOT0-----------------
CREATE TABLE pet_photo
(
       id NUMBER(6),                --PK
       id_pet NUMBER(6),            --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE pet_photo
ADD 
CONSTRAINT pk_petPhoto_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE pet_photo
ADD CONSTRAINT FK_petPhoto_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
-------------------------------------------
-----------------TELEPHONE-----------------
CREATE TABLE telephone
(
       id NUMBER(6),                --PK
       phone_number NUMBER(12) CONSTRAINT telephone_pn_nn NOT NULL
);

--alters--
--PK
ALTER TABLE telephone
ADD 
CONSTRAINT pk_telephone PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
-------------------------------------------
--------------PHONExTELEPHONE--------------
CREATE TABLE phoneXtelephone
(
       id_pet NUMBER(6),            --PK & FK
       id_telephone NUMBER(6)       --PK & FK
);

--alters--
--PK
ALTER TABLE phoneXtelephone
ADD 
CONSTRAINT pk_phoneXtelephone PRIMARY KEY (id_pet,id_telephone)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE phoneXtelephone
ADD CONSTRAINT FK_pxp_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE phoneXtelephone
ADD CONSTRAINT FK_pxp_idTelephone
FOREIGN KEY (id_telephone) REFERENCES telephone(id);
-------------------------------------------
--------------ASSOCIATIONxPET--------------
CREATE TABLE associationXpet
(
       id_pet NUMBER(6),            --PK & FK
       id_association NUMBER(6),    --PK & FK
       amount_spent NUMBER(12),
       date_in DATE CONSTRAINT AXP_date_in_nn NOT NULL
);

--alters--
--PK
ALTER TABLE associationXpet
ADD 
CONSTRAINT pk_associationXpet PRIMARY KEY (id_pet,id_association)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE associationXpet
ADD CONSTRAINT FK_axp_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE associationXpet
ADD CONSTRAINT FK_axp_idAssociation
FOREIGN KEY (id_association) REFERENCES association(id_legal);
-------------------------------------------
----------------RESCUERxPET----------------
CREATE TABLE rescuerXpet
(
       id_pet NUMBER(6),            --PK & FK
       id_rescuer NUMBER(6),        --PK & FK
       amount_spent NUMBER(12),
       date_in DATE CONSTRAINT RXP_date_in_nn NOT NULL
);

--alters--
--PK
ALTER TABLE rescuerXpet
ADD 
CONSTRAINT pk_rescuerXpet PRIMARY KEY (id_pet,id_rescuer)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuerXpet
ADD CONSTRAINT FK_rxp_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE rescuerXpet
ADD CONSTRAINT FK_rxp_idRescuer
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);
-------------------------------------------

--DROP TABLE rescuerXpet;
--DROP TABLE associationXpet;
--DROP TABLE phoneXtelephone;
--DROP TABLE telephone;
--DROP TABLE pet_photo;
--DROP TABLE pet;
--DROP TABLE breed;
--DROP TABLE color;
--DROP TABLE pet_type;
--DROP TABLE pet_status;
--DROP TABLE personal_question_test;
--DROP TABLE personal_test;

