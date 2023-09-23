-------------------------------------------
-------------ASSOCIATION-----------------
CREATE TABLE association
(
       id_legal NUMBER(6),               -- PK & FK
       association_name VARCHAR2(20)CONSTRAINT association_associationName_nn UNIQUE NOT NULL
);

--alters--
--PK
ALTER TABLE association
ADD 
CONSTRAINT pk_association PRIMARY KEY (id_legal)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE association
ADD CONSTRAINT FK_associationid
FOREIGN KEY (id_legal) REFERENCES legal_person(id_legal);

--comments--
COMMENT ON TABLE association
IS
'Repositorio para almacenar información de asociaciones';
COMMENT ON COLUMN association.id_legal
IS
'Identificador de la persona jurídica';
COMMENT ON COLUMN association.association_name
IS
'Nombre de la asociación';