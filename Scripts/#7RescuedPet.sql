-------------------------------------------
-------------------ENERGY------------------
CREATE TABLE energy
(
       id NUMBER(6),                --PK
       energy_description VARCHAR(30) CONSTRAINT energy_ED_nn NOT NULL
);

--alters--
--PK
ALTER TABLE energy
ADD 
CONSTRAINT pk_energy PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
------------------TRAINING-----------------
CREATE TABLE training
(
       id NUMBER(6),                --PK
       training_description VARCHAR(30) CONSTRAINT training_TD_nn NOT NULL
);

--alters--
--PK
ALTER TABLE training
ADD 
CONSTRAINT pk_training PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
------------------SEVERITY-----------------
CREATE TABLE severity
(
       id NUMBER(6),                --PK
       severity_description VARCHAR(30) CONSTRAINT severity_SD_nn NOT NULL
);

--alters--
--PK
ALTER TABLE severity
ADD 
CONSTRAINT pk_severity PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
--------------RESCUED----------------------
CREATE TABLE rescued
(
       id_pet NUMBER(6),                    --PK & FK
       id_rescued NUMBER(6) UNIQUE,         -- CANDIDATE KEY
       id_energy NUMBER(6),                 --FK
       id_training NUMBER(6),               --FK
       id_severity NUMBER(6),               --FK
       
       notes VARCHAR(50) CONSTRAINT RS_notes_nn NOT NULL, -- description of candidate's interest
       rescued_pet_space VARCHAR(50) CONSTRAINT RescuedSpace_RPS_nn NOT NULL
);
--alters--
--PK
ALTER TABLE rescued
ADD 
CONSTRAINT pk_rescued_idPet PRIMARY KEY (id_pet)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idEnergy
FOREIGN KEY (id_energy) REFERENCES energy(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idTraining
FOREIGN KEY (id_training) REFERENCES training(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idSeverity
FOREIGN KEY (id_severity) REFERENCES severity(id);
-------------------------------------------
---------------RESCUEDxDISTRICT---------------
CREATE TABLE rescuedXdistrict
(
       id_rescued NUMBER(6),        --PK & FK
       id_district NUMBER(6)        --PK & FK
);

--alters--
--PK
ALTER TABLE rescuedXdistrict
ADD 
CONSTRAINT pk_rescuedXdistrict PRIMARY KEY (id_rescued,id_district)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuedXdistrict
ADD CONSTRAINT FK_RxD_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);
--
ALTER TABLE rescuedXdistrict
ADD CONSTRAINT FK_RxD_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);
-------------------------------------------
----------------PHOTO_BEFORE---------------
CREATE TABLE photo_before
(
       id NUMBER(6),                --PK
       id_rescued NUMBER(6),        --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_before
ADD 
CONSTRAINT pk_photoBefore PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_before
ADD CONSTRAINT FK_PB_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);
-------------------------------------------
----------------PHOTO_AFTER----------------
CREATE TABLE photo_after
(
       id NUMBER(6),                --PK
       id_rescued NUMBER(6),        --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_after
ADD 
CONSTRAINT pk_photoAfter PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_after
ADD CONSTRAINT FK_PA_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);
-------------------------------------------
------------------ILLNESS------------------
CREATE TABLE illness
(
       id NUMBER(6),                --PK
       illness_description VARCHAR(30) CONSTRAINT illness_ID_nn NOT NULL
);

--alters--
--PK
ALTER TABLE illness
ADD 
CONSTRAINT pk_illness PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
--------------RESCUEDxILLNESS--------------
CREATE TABLE rescuedXillness
(
       id_rescued NUMBER(6),        --PK & FK
       id_illness NUMBER(6)         --PK & FK
);

--alters--
--PK
ALTER TABLE rescuedXillness
ADD 
CONSTRAINT pk_RxI PRIMARY KEY (id_rescued,id_illness)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuedXillness
ADD CONSTRAINT FK_RxI_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);
--
ALTER TABLE rescuedXillness
ADD CONSTRAINT FK_RxI_idIllness
FOREIGN KEY (id_illness) REFERENCES illness(id);
-------------------------------------------
-----------------TREATMENT-----------------
CREATE TABLE treatment
(
       id NUMBER(6),                --PK
       id_illness NUMBER(6),        --FK
       treatment_description VARCHAR(30) CONSTRAINT treatment_TD_nn NOT NULL
);

--alters--
--PK
ALTER TABLE treatment
ADD 
CONSTRAINT pk_treatment PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------

--DROP TABLE rescuedXdistrict;
--DROP TABLE rescuedXillness;
--DROP TABLE treatment;
--DROP TABLE illness;
--DROP TABLE photo_after;
--DROP TABLE photo_before;
--DROP TABLE rescued;
--DROP TABLE severity;
--DROP TABLE training;
--DROP TABLE energy;