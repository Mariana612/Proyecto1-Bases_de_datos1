-------------------------------------------
----------------PHOTO_BEFORE---------------
CREATE TABLE photo_before
(
       id NUMBER(6),                --PK
       id_rescued NUMBER(6),        --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_before
ADD 
CONSTRAINT pk_photoBefore PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_before
ADD CONSTRAINT FK_PB_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);

--comments--
COMMENT ON TABLE photo_before
IS
'Repositorio para guardar las fotos antes del rescate de la mascota';
COMMENT ON COLUMN photo_before.id
IS
'Identificador de la foto';
COMMENT ON COLUMN photo_before.id_rescued
IS
'Identificador de la mascota';
COMMENT ON COLUMN photo_before.picture_path
IS
'Path de la foto';