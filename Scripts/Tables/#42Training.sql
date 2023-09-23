-------------------------------------------
------------------TRAINING-----------------
CREATE TABLE training
(
       id NUMBER(6),                --PK
       training_description VARCHAR(30) CONSTRAINT training_TD_nn NOT NULL
);

--alters--
--PK
ALTER TABLE training
ADD 
CONSTRAINT pk_training PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE training
IS
'Repositorio para guardar la información sobre la facilidad de entrenamiento de una mascota';
COMMENT ON COLUMN training.id
IS
'Identificador de la facilidad de entrenamiento';
COMMENT ON COLUMN training.training_description
IS
'Descripción de la facilidad de entrenamiento';