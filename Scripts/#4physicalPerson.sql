-------------------------------------------
--------------PHYSICAL_PERSON--------------
CREATE TABLE physical_person
(
       id_physical NUMBER(6)               -- PK & FK
);

--alters--
--PK
ALTER TABLE physical_person
ADD 
CONSTRAINT pk_physicalPerson PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE physical_person
ADD CONSTRAINT FK_physical_person
FOREIGN KEY (id_physical) REFERENCES person(id);
-------------------------------------------
------------------PET_OWNER----------------
CREATE TABLE pet_owner
(
       id_physical NUMBER (6)       -- PK & FK

);

--alters--
--PK
ALTER TABLE pet_owner
ADD 
CONSTRAINT pk_petOwner_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE pet_owner
ADD CONSTRAINT FK_petowner
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
-------------------------------------------
----------------RESCUER------------------
CREATE TABLE rescuer
(
       id_physical NUMBER (6)       -- PK & FK

);

--alters--
--PK
ALTER TABLE rescuer
ADD 
CONSTRAINT pk_rescuer_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuer
ADD CONSTRAINT FK_rescuer
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
-------------------------------------------
------------------FOSTER_HOME--------------
CREATE TABLE foster_home
(
       id_physical NUMBER (6),      -- PK & FK
       pet_space VARCHAR(200)       -- Description of the space the pet needs

);

--alters--
--PK
ALTER TABLE foster_home
ADD 
CONSTRAINT pk_foster_home_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE foster_home
ADD CONSTRAINT FK_foster_home
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
-------------------------------------------
-------------RESCUERxFOSTERHOME------------
CREATE TABLE rescuerXfoster_home
(
       id_physical NUMBER (6),      -- PK & FK
       id_foster_home NUMBER (6)    -- PK & FK

);

--alters--
--PK
ALTER TABLE rescuerXfoster_home
ADD 
CONSTRAINT pk_RxF_idPhysical PRIMARY KEY (id_physical,id_foster_home)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuerXfoster_home
ADD CONSTRAINT FK_RxF_idPhysical
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);

ALTER TABLE rescuerXfoster_home
ADD CONSTRAINT FK_RxF_idFosterHome
FOREIGN KEY (id_foster_home) REFERENCES foster_home(id_physical);
-------------------------------------------
---------------FOSTER_PETTYPE--------------
CREATE TABLE foster_petType
(
       id NUMBER(6),                --PK
       id_foster_home NUMBER (6),   -- PK & FK
       name_type VARCHAR(20) CONSTRAINT FPT_nameType_nn NOT NULL,
       CONSTRAINT FPT_nameType_format CHECK (REGEXP_LIKE(name_type, '^[a-zA-Z0-9]+$')), -- foster_petType contains only alphanumeric characters and underscores
       CONSTRAINT FPT_nameType_noSpaces CHECK (NOT REGEXP_LIKE(name_type, '\s')) -- foster_petType should not contain spaces

);

--alters--
--PK
ALTER TABLE foster_petType
ADD 
CONSTRAINT pk_FPT_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE foster_petType
ADD CONSTRAINT FK_FPT_idFosterHome
FOREIGN KEY (id_foster_home) REFERENCES foster_home(id_physical);
-------------------------------------------
---------------DONATION_TYPE---------------
CREATE TABLE donation_type
(
       id NUMBER(6),                --PK
       donation_description VARCHAR(20) CONSTRAINT DT_donationDescription_nn NOT NULL
);

--alters--
--PK
ALTER TABLE donation_type
ADD 
CONSTRAINT pk_donationType_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
------------------DONATION-----------------
CREATE TABLE donation
(
       id NUMBER(6),                --PK
       id_foster_home NUMBER (6),   --FK
       id_type NUMBER (6)           --FK
);

--alters--
--PK
ALTER TABLE donation
ADD 
CONSTRAINT pk_donation_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE donation
ADD CONSTRAINT FK_donation_idFosterHome
FOREIGN KEY (id_foster_home) REFERENCES foster_home(id_physical);

ALTER TABLE donation
ADD CONSTRAINT FK_donation_idType
FOREIGN KEY (id_type) REFERENCES donation_type(id);
-------------------------------------------

--DROP TABLE donation;
--DROP TABLE donation_type;
--DROP TABLE foster_petType;
--DROP TABLE rescuerXfoster_home;
--DROP TABLE foster_home;
--DROP TABLE rescuer;
--DROP TABLE pet_owner;
--DROP TABLE physical_person;