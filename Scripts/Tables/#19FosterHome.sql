-------------------------------------------
------------------FOSTER_HOME--------------
CREATE TABLE foster_home
(
       id_physical NUMBER (6),      -- PK & FK
       pet_space VARCHAR(200)       -- Description of the space the pet needs

);

--alters--
--PK
ALTER TABLE foster_home
ADD 
CONSTRAINT pk_foster_home_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE foster_home
ADD CONSTRAINT FK_foster_home
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);

--comments--
COMMENT ON TABLE foster_home
IS
'Repositorio para almacenar las personas que actúan como casa cuna';
COMMENT ON COLUMN rescuer.id_physical
IS
'Identificador del la persona física';