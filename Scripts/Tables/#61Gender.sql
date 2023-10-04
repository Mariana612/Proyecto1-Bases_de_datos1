-------------------------------------------
----------------GENDER------------------
CREATE TABLE gender
(      
       id NUMBER(6),                --PK
       name_gender VARCHAR2(40)CONSTRAINT name_gender_nn NOT NULL,
       CONSTRAINT name_gender_format CHECK (REGEXP_LIKE(name_gender, '^[a-zA-Z]+$')) -- contains only alphabetic characters
);

--alters--
--PK
ALTER TABLE gender
ADD 
CONSTRAINT pk_gender_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);


--comments--
COMMENT ON TABLE gender
IS
'Repositorio para almacenar el género de las personas';
COMMENT ON COLUMN gender.id
IS
'Identificador del género';
COMMENT ON COLUMN gender.name_gender
IS
'Género';

--HAY QUE ALTERAR LA TABLA DE PERSONA FÍSICA PARA AGREGARLE EL id GÉNERO--
ALTER TABLE physical_person
ADD id_gender NUMBER(6) CONSTRAINT id_gender_nn NOT NULL;

--FK
ALTER TABLE physical_person
ADD CONSTRAINT FK_Physical_id_gender
FOREIGN KEY (id_gender) REFERENCES gender(id);