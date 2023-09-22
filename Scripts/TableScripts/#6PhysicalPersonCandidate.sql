-----------------CANDIDATE-----------------
CREATE TABLE candidate
(
       id_physical NUMBER(6),               --PK & FK
       id_test NUMBER(6),                   --FK
       id_candidate NUMBER(6)UNIQUE,        -- CANDIDATE KEY
       
       own_house VARCHAR(3) CONSTRAINT own_house_bool CHECK (own_house IN ('No', 'Yes')),
       has_authorization VARCHAR(3) CONSTRAINT authorization_bool CHECK (has_authorization IN ('No', 'Yes')),
       purpose VARCHAR(3) CONSTRAINT purpose_boolean CHECK (purpose IN ('No', 'Yes')),
       interest_in_adoption VARCHAR(50) CONSTRAINT candidate_IIA_nn NOT NULL, -- description of candidate's interest
       accompaniment_average VARCHAR(50) CONSTRAINT candidate_AA_nn NOT NULL,
       minimum_monthly_amount VARCHAR(50) CONSTRAINT candidate_MinMA_nn NOT NULL,
       maximum_monthly_amount VARCHAR(50) CONSTRAINT candidate_MaxMa_nn NOT NULL
);
--alters--
--PK
ALTER TABLE candidate
ADD 
CONSTRAINT pk_candidate_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE candidate
ADD CONSTRAINT FK_candidate_idPhysical
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
--
ALTER TABLE candidate
ADD CONSTRAINT FK_candidate_idtest
FOREIGN KEY (id_test) REFERENCES personal_test(id);
-------------------------------------------
-----------------PHOTO_STAY----------------
CREATE TABLE photo_stay
(
       id NUMBER(6),                --PK
       id_candidate NUMBER(6),      --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_stay
ADD 
CONSTRAINT pk_photostay PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_stay
ADD CONSTRAINT FK_photostay_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
-------------------------------------------
----------------PHOTO_SLEEP----------------
CREATE TABLE photo_sleep
(
       id NUMBER(6),                --PK
       id_candidate NUMBER(6),      --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_sleep
ADD 
CONSTRAINT pk_photoSleep PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_sleep
ADD CONSTRAINT FK_pk_photoSleep_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
-------------------------------------------
-----------------OTHER_PET-----------------
CREATE TABLE other_pet
(
       id NUMBER(6),                --PK
       id_candidate NUMBER(6),      --FK
       date_adopted DATE
);

--alters--
--PK
ALTER TABLE other_pet
ADD 
CONSTRAINT pk_otherPet PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE other_pet
ADD CONSTRAINT FK_PQT_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
-------------------------------------------
------------PHOTO_OTHER_PET----------------
CREATE TABLE photo_other_pet
(
       id NUMBER(6),                --PK
       id_otherPet NUMBER(6),       --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_other_pet
ADD 
CONSTRAINT pk_POP PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_other_pet
ADD CONSTRAINT FK_POP_idOtherPet
FOREIGN KEY (id_otherPet) REFERENCES other_pet(id);
-------------------------------------------
-----------ASSOCIATIONxCANDIDATE-----------
CREATE TABLE associationXcandidate
(
       id_association NUMBER(6),        --PK & FK
       id_candidate NUMBER(6),          --PK & FK
       calification NUMBER(5,2),
       notes VARCHAR(500)
);

--alters--
--PK
ALTER TABLE associationXcandidate
ADD 
CONSTRAINT pk_AxC PRIMARY KEY (id_association,id_candidate)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE associationXcandidate
ADD CONSTRAINT FK_AxC_idAssociation
FOREIGN KEY (id_association) REFERENCES association(id_legal);
--
ALTER TABLE associationXcandidate
ADD CONSTRAINT FK_AxC_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
-------------------------------------------
-------------RESCUERxCANDIDATE-------------
CREATE TABLE rescuerXcandidate
(
       id_rescuer NUMBER(6),            --PK & FK
       id_candidate NUMBER(6),          --PK & FK
       calification NUMBER(5,2),
       notes VARCHAR(500)
);

--alters--
--PK
ALTER TABLE rescuerXcandidate
ADD 
CONSTRAINT pk_RxC PRIMARY KEY (id_rescuer,id_candidate)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuerXcandidate
ADD CONSTRAINT FK_RxC_idAssociation
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);
--
ALTER TABLE rescuerXcandidate
ADD CONSTRAINT FK_RxC_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
-------------------------------------------

--DROP TABLE rescuerXcandidate;
--DROP TABLE associationXcandidate;
--DROP TABLE photo_other_pet;
--DROP TABLE other_pet;
--DROP TABLE photo_sleep;
--DROP TABLE photo_stay;
--DROP TABLE candidate;
--
--




