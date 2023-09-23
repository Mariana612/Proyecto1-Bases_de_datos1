-------------------------------------------
----------------FOUND_PET------------------
CREATE TABLE found_pet
(
       id_pet NUMBER(6),                    --PK & FK
       date_found DATE CONSTRAINT foundPet_date_nn NOT NULL,
       id_district NUMBER(6)                --FK
);
--alters--
--PK
ALTER TABLE found_pet
ADD 
CONSTRAINT pk_foundPet_idPet PRIMARY KEY (id_pet)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE found_pet
ADD CONSTRAINT FK_foundPet_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE found_pet
ADD CONSTRAINT FK_foundPet_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);

--comments--
COMMENT ON TABLE found_pet
IS
'Repositorio para almacenar información sobre mascotas encontradas';
COMMENT ON COLUMN found_pet.id_pet
IS
'Identificador de la mascota';
COMMENT ON COLUMN found_pet.id_district
IS
'Id del distrito donde se encontró la mascota';
COMMENT ON COLUMN found_pet.date_found
IS
'Fecha en la que se encontró la mascota';