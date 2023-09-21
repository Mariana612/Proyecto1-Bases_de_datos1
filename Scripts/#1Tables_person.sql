-------------------------------------------
-------------------PERSON------------------
CREATE TABLE person
(
       id NUMBER(6),                --PK
       first_name VARCHAR2(40)CONSTRAINT person_firstName_nn NOT NULL,
       middle_name VARCHAR2(40),
       first_last_name VARCHAR2(40)CONSTRAINT person_middleName_nn NOT NULL,
       second_last_name VARCHAR2(40)
);
--alters--
--PK
ALTER TABLE person
ADD 
CONSTRAINT pk_person PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
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
---------------LEGAL_PERSON----------------
CREATE TABLE legal_person
(
       id_legal NUMBER(6)               -- PK & FK
);

--alters--
--PK
ALTER TABLE legal_person
ADD 
CONSTRAINT pk_legalPerson PRIMARY KEY (id_legal)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE legal_person
ADD CONSTRAINT FK_legal_person
FOREIGN KEY (id_legal) REFERENCES person(id);
-------------------------------------------
---------------ASSOCIATION----------------
CREATE TABLE association
(
       id NUMBER(6)               -- PK & FK
);

--alters--
--PK
ALTER TABLE association
ADD 
CONSTRAINT pk_association PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE association
ADD CONSTRAINT FK_legal_person
FOREIGN KEY (id_legal) REFERENCES person(id);
-------------------------------------------
