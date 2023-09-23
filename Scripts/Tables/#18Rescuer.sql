-------------------------------------------
----------------RESCUER------------------
CREATE TABLE rescuer
(
       id_physical NUMBER (6)       -- PK & FK

);

--alters--
--PK
ALTER TABLE rescuer
ADD 
CONSTRAINT pk_rescuer_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE rescuer
ADD CONSTRAINT FK_rescuer
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);

--comments--
COMMENT ON TABLE rescuer
IS
'Repositorio para almacenar las personas rescatistas';
COMMENT ON COLUMN rescuer.id_physical
IS
'Identificador del la persona física';