-------------------------------------------
-----------------PET_PHOT0-----------------
CREATE TABLE pet_photo
(
       id NUMBER(6),                --PK
       id_pet NUMBER(6),            --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE pet_photo
ADD 
CONSTRAINT pk_petPhoto_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE pet_photo
ADD CONSTRAINT FK_petPhoto_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);

--comments--
COMMENT ON TABLE pet_photo
IS
'Repositorio para almacenar fotos de mascotas';
COMMENT ON COLUMN pet_photo.id
IS
'Identificador de la foto de la mascota';
COMMENT ON COLUMN pet_photo.id_pet
IS
'Identificador de la mascota';
COMMENT ON COLUMN pet_photo.picture_path
IS
'Path de la foto';