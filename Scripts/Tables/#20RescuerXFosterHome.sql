------------------------------------------
-------------RESCUERxFOSTERHOME------------
CREATE TABLE rescuerXfoster_home
(
       id_physical NUMBER (6),      -- PK & FK
       id_foster_home NUMBER (6)    -- PK & FK

);

--alters--
--PK
ALTER TABLE rescuerXfoster_home
ADD 
CONSTRAINT pk_RxF_idPhysical PRIMARY KEY (id_physical,id_foster_home)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE rescuerXfoster_home
ADD CONSTRAINT FK_RxF_idPhysical
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);

ALTER TABLE rescuerXfoster_home
ADD CONSTRAINT FK_RxF_idFosterHome
FOREIGN KEY (id_foster_home) REFERENCES foster_home(id_physical);

--comments--
COMMENT ON TABLE rescuerXfoster_home
IS
'Repositorio para almacenar los rescatistas que colaboran con casas cuna';
COMMENT ON COLUMN rescuerXfoster_home.id_physical
IS
'Identificador del la persona física';
COMMENT ON COLUMN rescuerXfoster_home.id_foster_home
IS
'Identificador de la casa cuna';