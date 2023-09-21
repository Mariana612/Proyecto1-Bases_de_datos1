-------------------------------------------
---------------ADOPTION_TEST---------------
CREATE TABLE adoption_test
(
       id NUMBER(6),                --PK
       test_name VARCHAR2(20) CONSTRAINT test_testName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE adoption_test
ADD 
CONSTRAINT pk_adoptionTest PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
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
       id_pet_type NUMBER(6),       --PK
       type_name VARCHAR2(20) CONSTRAINT petType_typeName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE pet_type
ADD 
CONSTRAINT pk_pet_type PRIMARY KEY (id_pet_type)
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
       
       id_pet_status NUMBER (6),    --FK
       id_pet_type NUMBER (6),      --FK
       id_color NUMBER (6),         --FK
       id_breed NUMBER (6),         --FK
       id_adoption_test NUMBER (6), --FK
       id_owner NUMBER (6)          --FK
);

--alters--
--PK
ALTER TABLE pet 
ADD 
CONSTRAINT pk_pet PRIMARY KEY (id_pet)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
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
ADD CONSTRAINT FK_test
FOREIGN KEY (id_adoption_test) REFERENCES adoption_test(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_owner
FOREIGN KEY (id_owner) REFERENCES pet_owner(id);
-------------------------------------------
