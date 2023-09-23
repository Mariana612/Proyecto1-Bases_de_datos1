-------------------------------------------
------------------PET_OWNER----------------
CREATE TABLE pet_owner
(
       id_physical NUMBER (6)       -- PK & FK

);

--alters--
--PK
ALTER TABLE pet_owner
ADD 
CONSTRAINT pk_petOwner_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE pet_owner
ADD CONSTRAINT FK_petowner
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);

--comments--
COMMENT ON TABLE pet_owner
IS
'Repositorio para almacenar las personas dueñas de mascotas';
COMMENT ON COLUMN pet_owner.id_physical
IS
'Identificador del la persona física';