-------------------------------------------
----------------PHOTO_SLEEP----------------
CREATE TABLE photo_sleep
(
       id NUMBER(6),                --PK
       id_candidate NUMBER(6),      --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_sleep
ADD 
CONSTRAINT pk_photoSleep PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_sleep
ADD CONSTRAINT FK_pk_photoSleep_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);

--comments--
COMMENT ON TABLE photo_sleep
IS
'Repositorio para guardar las fotos donde se va a dormir la mascota';

COMMENT ON COLUMN photo_sleep.id
IS
'Identificador de la foto';
COMMENT ON COLUMN photo_sleep.id_candidate
IS
'Identificador del candidato';
COMMENT ON COLUMN photo_sleep.picture_path
IS
'Path de la foto';