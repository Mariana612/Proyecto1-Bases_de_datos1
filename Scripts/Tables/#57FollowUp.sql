-------------------------------------------
-----------------FOLLOW_UP-----------------
CREATE TABLE follow_up
(
       id NUMBER(6),                        --PK
       id_adoption_form NUMBER(6),         --FK
       note VARCHAR(30) CONSTRAINT followUp_note_nn NOT NULL
);

--alters--
--PK
ALTER TABLE follow_up
ADD 
CONSTRAINT pk_followUp PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE follow_up
ADD CONSTRAINT FK_followUp_idAF
FOREIGN KEY (id_adoption_form) REFERENCES adoption_form(id);

--comments--
COMMENT ON TABLE follow_up
IS
'Repositorio para almacenar información sobre el seguimiento de una adopción';
COMMENT ON COLUMN follow_up.id
IS
'Identificador del seguimiento';
COMMENT ON COLUMN follow_up.id_adoption_form
IS
'Identificador del formulario';
COMMENT ON COLUMN follow_up.note
IS
'Espacio para notas';