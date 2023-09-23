-------------------------------------------
-----------------PET_STATUS----------------
CREATE TABLE pet_status
(
       id NUMBER(6),                --PK
       status_name VARCHAR2(20) CONSTRAINT petStatus_statusName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE pet_status
ADD 
CONSTRAINT pk_pet_stauts PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE pet_status
IS
'Repositorio para almacenar el estado de una mascota';
COMMENT ON COLUMN pet_status.id
IS
'Identificador de el estado de una mascota';
COMMENT ON COLUMN pet_status.status_name
IS
'Estado de la mascota';