-------------------------------------------
---------------LEGAL_PERSON----------------
CREATE TABLE legal_person
(
       id_legal NUMBER(6)           -- PK & FK
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

--comments--
COMMENT ON TABLE legal_person
IS
'Repositorio para almacenar personas jurídicas';
COMMENT ON COLUMN legal_person.id_legal
IS
'Identificador de la persona física';