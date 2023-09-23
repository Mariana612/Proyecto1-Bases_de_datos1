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

--comments--
COMMENT ON TABLE illness
IS
'Repositorio para guardar la información sobre enfermedades';
COMMENT ON COLUMN illness.id
IS
'Identificador de la enfermedad';
COMMENT ON COLUMN illness.illness_description
IS
'Descripción de la enfermedad';