-------------------------------------------
-------------------BREED-------------------
CREATE TABLE breed
(
       id NUMBER(6),          --PK
       breed_name VARCHAR2(20) CONSTRAINT breed_breedName_nn NOT NULL,
       CONSTRAINT unique_breed_name UNIQUE (breed_name),
       id_pet_type NUMBER (6) CONSTRAINT breed_id_type_nn NOT NULL      --FK
);

--alters--
--PK
ALTER TABLE breed
ADD 
CONSTRAINT pk_breed PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE breed
ADD CONSTRAINT FK_breed_pet_type
FOREIGN KEY (id_pet_type) REFERENCES pet_type(id);
--comments--
COMMENT ON TABLE breed
IS
'Repositorio para almacenar información sobre las razas de mascotas';
COMMENT ON COLUMN breed.id
IS
'Identificador de la raza';
COMMENT ON COLUMN breed.breed_name
IS
'Nombre de la raza';
COMMENT ON COLUMN breed.id_pet_type
IS
'Identificador del tipo de mascota';


