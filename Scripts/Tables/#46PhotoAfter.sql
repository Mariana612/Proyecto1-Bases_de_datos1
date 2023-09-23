-------------------------------------------
----------------PHOTO_AFTER----------------
CREATE TABLE photo_after
(
       id NUMBER(6),                --PK
       id_rescued NUMBER(6),        --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_after
ADD 
CONSTRAINT pk_photoAfter PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_after
ADD CONSTRAINT FK_PA_idRescued
FOREIGN KEY (id_rescued) REFERENCES rescued(id_pet);
--comments--
COMMENT ON TABLE photo_after
IS
'Repositorio para guardar las fotos después del rescate de la mascota';
COMMENT ON COLUMN photo_after.id
IS
'Identificador de la foto';
COMMENT ON COLUMN photo_after.id_rescued
IS
'Identificador de la mascota';
COMMENT ON COLUMN photo_after.picture_path
IS
'Path de la foto';