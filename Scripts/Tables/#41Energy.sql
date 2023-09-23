-------------------------------------------
-------------------ENERGY------------------
CREATE TABLE energy
(
       id NUMBER(6),                --PK
       energy_description VARCHAR(30) CONSTRAINT energy_ED_nn NOT NULL
);

--alters--
--PK
ALTER TABLE energy
ADD 
CONSTRAINT pk_energy PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE energy
IS
'Repositorio para guardar la informaci�n sobre la energ�a de una mascota';

COMMENT ON COLUMN energy.id
IS
'Identificador de la energ�a';
COMMENT ON COLUMN energy.energy_description
IS
'Descripci�n de la energ�a';
