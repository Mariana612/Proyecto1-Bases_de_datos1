-------------------------------------------
--------------RESCUED----------------------
CREATE TABLE rescued
(
       id_pet NUMBER(6),                    --PK & FK
       id_energy NUMBER(6),                 --FK
       id_training NUMBER(6),               --FK
       id_severity NUMBER(6),               --FK
       id_district NUMBER(6),               --FK
       
       notes VARCHAR(50) , -- description
       rescued_pet_space VARCHAR(3) CONSTRAINT rescued_space_bool CHECK (rescued_pet_space IN ('No', 'Yes'))
       
);
--alters--
--PK
ALTER TABLE rescued
ADD 
CONSTRAINT pk_rescued_idPet PRIMARY KEY (id_pet)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idEnergy
FOREIGN KEY (id_energy) REFERENCES energy(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idTraining
FOREIGN KEY (id_training) REFERENCES training(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idSeverity
FOREIGN KEY (id_severity) REFERENCES severity(id);
--
ALTER TABLE rescued
ADD CONSTRAINT FK_rescued_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);

--comments--
COMMENT ON TABLE rescued
IS
'Repositorio para guardar la información sobre mascotas rescatadas';
COMMENT ON COLUMN rescued.id_pet
IS
'Identificador de la mascota';
COMMENT ON COLUMN rescued.id_energy
IS
'Identificador de la energía';
COMMENT ON COLUMN rescued.id_training
IS
'Identificador de la facilidad de entrenamiento';
COMMENT ON COLUMN rescued.id_severity
IS
'Identificador del grado de severidad';
COMMENT ON COLUMN rescued.notes
IS
'Campo de descripción libre.';
COMMENT ON COLUMN rescued.rescued_pet_space
IS
'Si requiere mucho espacio';