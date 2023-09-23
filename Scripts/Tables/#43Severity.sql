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

--comments--
COMMENT ON TABLE severity
IS
'Repositorio para guardar la información sobre el grado de severidad en la cual se encontró la mascota';
COMMENT ON COLUMN severity.id
IS
'Identificador del grado de severidad';
COMMENT ON COLUMN severity.severity_description
IS
'Descripción del grado de severidad';