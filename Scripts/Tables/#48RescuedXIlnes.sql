-------------------------------------------
--------------RESCUEDxILLNESS--------------
CREATE TABLE rescuedXillness
(
       id_rescued NUMBER(6),        --PK & FK
       id_illness NUMBER(6)         --PK & FK
);

--alters--
--PK
ALTER TABLE rescuedXillness
ADD 
CONSTRAINT pk_RxI PRIMARY KEY (id_rescued,id_illness)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuedXillness
ADD CONSTRAINT FK_RxI_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);
--
ALTER TABLE rescuedXillness
ADD CONSTRAINT FK_RxI_idIllness
FOREIGN KEY (id_illness) REFERENCES illness(id);

--comments--
COMMENT ON TABLE rescuedXillness
IS
'Repositorio para guardar las enfermedades que tiene una mascota rescatada';
COMMENT ON COLUMN rescuedXillness.id_rescued
IS
'Identificador de la mascota';
COMMENT ON COLUMN rescuedXillness.id_illness
IS
'Identificador de la enfermedad';