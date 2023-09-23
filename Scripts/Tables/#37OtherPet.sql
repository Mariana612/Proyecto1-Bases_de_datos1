-------------------------------------------
-----------------OTHER_PET-----------------
CREATE TABLE other_pet
(
       id NUMBER(6),                --PK
       id_candidate NUMBER(6),      --FK
       date_adopted DATE
);

--alters--
--PK
ALTER TABLE other_pet
ADD 
CONSTRAINT pk_otherPet PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE other_pet
ADD CONSTRAINT FK_PQT_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);

--comments--
COMMENT ON TABLE other_pet
IS
'Repositorio para guardar la información sobre otras mascotas';

COMMENT ON COLUMN other_pet.id
IS
'Identificador de la mascota';
COMMENT ON COLUMN other_pet.id_candidate
IS
'Identificador del candidato';
COMMENT ON COLUMN other_pet.date_adopted
IS
'Fecha de adopción de la mascota';