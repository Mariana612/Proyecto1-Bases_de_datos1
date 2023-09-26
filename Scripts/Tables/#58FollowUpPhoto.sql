-------------------------------------------
--------------FOLLOWUP_PHOTO---------------
CREATE TABLE follow_up_photo
(
       id NUMBER(6),                        --PK
       id_follow_up NUMBER(6),              --FK
       picture_path VARCHAR2(255) CONSTRAINT FUP_PicturePath_nn NOT NULL
);

--alters--
--PK
ALTER TABLE follow_up_photo
ADD 
CONSTRAINT pk_followUpPhoto PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE follow_up_photo
ADD CONSTRAINT FK_FUP_idFU
FOREIGN KEY (id_follow_up) REFERENCES follow_up(id);

--comments--
COMMENT ON TABLE follow_up_photo
IS
'Repositorio para almacenar fotos sobre el seguimiento de una adopción';
COMMENT ON COLUMN follow_up_photo.id
IS
'Identificador de la foto de seguimiento';
COMMENT ON COLUMN follow_up_photo.id_follow_up
IS
'Identificador del seguimiento';
COMMENT ON COLUMN follow_up_photo.picture_path
IS
'Path de la foto';