-------------------------------------------
-----------------PHOTO_STAY----------------
CREATE TABLE photo_stay
(
       id NUMBER(6),                --PK
       id_candidate NUMBER(6),      --FK
       picture_path VARCHAR2(255)   --Path for the photo
);

--alters--
--PK
ALTER TABLE photo_stay
ADD 
CONSTRAINT pk_photostay PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE photo_stay
ADD CONSTRAINT FK_photostay_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);

--comments--
COMMENT ON TABLE photo_stay
IS
'Repositorio para guardar las fotos donde se va a quedar la mascota';

COMMENT ON COLUMN photo_stay.id
IS
'Identificador de la foto';
COMMENT ON COLUMN photo_stay.id_candidate
IS
'Identificador del candidato';
COMMENT ON COLUMN photo_stay.picture_path
IS
'Path de la foto';