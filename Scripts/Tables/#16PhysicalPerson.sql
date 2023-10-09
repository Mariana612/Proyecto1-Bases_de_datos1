-------------------------------------------
--------------PHYSICAL_PERSON--------------
CREATE TABLE physical_person
(
       id_physical NUMBER(6),               -- PK & FK
       birth_date DATE CONSTRAINT nn_birth_date NOT NULL,
       id_gender NUMBER(6) CONSTRAINT id_gender_nn NOT NULL
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

ALTER TABLE physical_person
ADD CONSTRAINT FK_Physical_id_gender
FOREIGN KEY (id_gender) REFERENCES gender(id);

--comments--
COMMENT ON TABLE physical_person
IS
'Repositorio para almacenar las personas físicas';
COMMENT ON COLUMN physical_person.id_physical
IS
'Identificador del la persona física';