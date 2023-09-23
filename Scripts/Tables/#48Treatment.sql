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

--comments--
COMMENT ON TABLE treatment
IS
'Repositorio para almacenar el tratamiento de las enfermedades';
COMMENT ON COLUMN treatment.id
IS
'Identificador del tratamiento';
COMMENT ON COLUMN treatment.id_illness
IS
'Identificador de la enfermedad';
COMMENT ON COLUMN treatment.treatment_description
IS
'Descripción del tratamiento';