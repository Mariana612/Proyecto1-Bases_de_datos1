-------------------------------------------
--------------TELEPHONExPERSON-----------------
CREATE TABLE telephoneXperson
(
       id_person NUMBER(6),            --PK & FK
       id_telephone NUMBER(6)       --PK & FK
);

--alters--
--PK
ALTER TABLE telephoneXperson
ADD 
CONSTRAINT pk_telephoneXperson PRIMARY KEY (id_person,id_telephone)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE telephoneXperson
ADD CONSTRAINT FK_tpxp_idPerson
FOREIGN KEY (id_person) REFERENCES person(id);
--
ALTER TABLE telephoneXperson
ADD CONSTRAINT FK_tpxp_idTelephone
FOREIGN KEY (id_telephone) REFERENCES telephone(id);

--comments--
COMMENT ON TABLE telephoneXperson
IS
'Repositorio para almacenar los teléfonos de personas';
COMMENT ON COLUMN telephoneXperson.id_person
IS
'Identificador del la persona';
COMMENT ON COLUMN telephoneXperson.id_telephone
IS
'Identificador del teléfono';