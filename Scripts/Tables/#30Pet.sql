-------------------------------------------
--------------------PET--------------------
CREATE TABLE pet
(
       id NUMBER(6),                --PK
       chip NUMBER(6),
       pet_name VARCHAR2(20),
       id_personal_test NUMBER (6), --FK
       id_pet_status NUMBER (6) CONSTRAINT pet_id_status_nn NOT NULL,    --FK
       id_pet_type NUMBER (6) CONSTRAINT pet_id_type_nn NOT NULL,      --FK
       id_color NUMBER (6),         --FK
       id_breed NUMBER (6),         --FK
       id_owner NUMBER (6)          --FK
);

--alters--
--PK
ALTER TABLE pet 
ADD 
CONSTRAINT pk_pet PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE pet
ADD CONSTRAINT FK_personal_test
FOREIGN KEY (id_personal_test) REFERENCES personal_test(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_pet_status
FOREIGN KEY (id_pet_status) REFERENCES pet_status(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_pet_type
FOREIGN KEY (id_pet_type) REFERENCES pet_type(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_color
FOREIGN KEY (id_color) REFERENCES color(id);
--
ALTER TABLE pet
ADD CONSTRAINT FK_owner
FOREIGN KEY (id_owner) REFERENCES pet_owner(id_physical);
--
ALTER TABLE pet
ADD CONSTRAINT FK_id_breed
FOREIGN KEY (id_breed) REFERENCES breed(id);
--comments--
COMMENT ON TABLE pet
IS
'Repositorio para almacenar información sobre mascotas';
COMMENT ON COLUMN pet.id
IS
'Identificador de la mascota';
COMMENT ON COLUMN pet.chip
IS
'chip de la mascota';
COMMENT ON COLUMN pet.pet_name
IS
'Nombre de la mascota';
COMMENT ON COLUMN pet.id_personal_test
IS
'Id del test';
COMMENT ON COLUMN pet.id_pet_status
IS
'Id del estado de la mascota';
COMMENT ON COLUMN pet.id_pet_type
IS
'Id del tipo de mascota';
COMMENT ON COLUMN pet.id_color
IS
'Identificador de color de mascota';
COMMENT ON COLUMN pet.id_owner
IS
'Identificador del dueño';
COMMENT ON COLUMN pet.id_breed
IS
'Identificador de la raza';


