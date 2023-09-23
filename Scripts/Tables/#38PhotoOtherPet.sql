-------------------------------------------
------------PHOTO_OTHER_PET----------------
CREATE TABLE photo_other_pet
(
       id NUMBER(6),                --PK
       id_otherPet NUMBER(6),       --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_other_pet
ADD 
CONSTRAINT pk_POP PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_other_pet
ADD CONSTRAINT FK_POP_idOtherPet
FOREIGN KEY (id_otherPet) REFERENCES other_pet(id);

--comments--
COMMENT ON TABLE photo_other_pet
IS
'Repositorio para guardar las fotos de otras mascotas';

COMMENT ON COLUMN photo_other_pet.id
IS
'Identificador de la foto';
COMMENT ON COLUMN photo_other_pet.id_otherPet
IS
'Identificador de la mascota';
COMMENT ON COLUMN photo_other_pet.picture_path
IS
'Path de la foto';
