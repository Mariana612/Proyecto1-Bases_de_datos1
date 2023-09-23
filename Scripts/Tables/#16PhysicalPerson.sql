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

--comments--
COMMENT ON TABLE physical_person
IS
'Repositorio para almacenar las personas físicas';
COMMENT ON COLUMN physical_person.id_physical
IS
'Identificador del la persona física';