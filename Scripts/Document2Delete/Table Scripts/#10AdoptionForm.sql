--------------------------------------------
--------------------STATUS------------------
CREATE TABLE status
(
       id NUMBER(6),                        --PK
       status_name VARCHAR(30) CONSTRAINT status_name_nn NOT NULL
);

--alters--
--PK
ALTER TABLE status
ADD 
CONSTRAINT pk_status PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
----------------ADOPTION_FORM---------------
CREATE TABLE adoption_form
(
       id NUMBER(6),                        --PK
       id_candidate NUMBER(6),              --FK
       id_pet NUMBER(6),                    --FK
       id_status NUMBER(6),                 --FK
       id_association NUMBER(6),            --FK
       id_rescuer NUMBER(6),                --FK
       form_name VARCHAR(30) CONSTRAINT adoptionForm_name_nn NOT NULL
);

--alters--
--PK
ALTER TABLE adoption_form
ADD 
CONSTRAINT pk_AF PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idStatus
FOREIGN KEY (id_status) REFERENCES status(id);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idAsso
FOREIGN KEY (id_association) REFERENCES association(id_legal);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idRescuer
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);
-------------------------------------------
-----------------FOLLOW_UP-----------------
CREATE TABLE follow_up
(
       id NUMBER(6),                        --PK
       id_addoption_form NUMBER(6),         --FK
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
FOREIGN KEY (id_addoption_form) REFERENCES adoption_form(id);
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
-------------------------------------------

--DROP TABLE follow_up_photo;
--DROP TABLE follow_up;
--DROP TABLE adoption_form;
--DROP TABLE status;
