-------------------------------------------
---------------FOSTER_PETTYPE--------------
CREATE TABLE foster_petType
(
       id NUMBER(6),                --PK
       id_foster_home NUMBER (6),   -- PK & FK
       name_type VARCHAR(20) CONSTRAINT FPT_nameType_nn NOT NULL,
       CONSTRAINT FPT_nameType_format CHECK (REGEXP_LIKE(name_type, '^[a-zA-Z0-9]+$')), -- foster_petType contains only alphanumeric characters and underscores
       CONSTRAINT FPT_nameType_noSpaces CHECK (NOT REGEXP_LIKE(name_type, '\s')) -- foster_petType should not contain spaces

);

--alters--
--PK
ALTER TABLE foster_petType
ADD 
CONSTRAINT pk_FPT_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE foster_petType
ADD CONSTRAINT FK_FPT_idFosterHome
FOREIGN KEY (id_foster_home) REFERENCES foster_home(id_physical);

--comments--
COMMENT ON TABLE foster_petType
IS
'Repositorio para almacenar tipos de mascota que recibe una casa cuna';
COMMENT ON COLUMN foster_petType.id
IS
'Identificador del tipo de mascota';
COMMENT ON COLUMN foster_petType.id_foster_home
IS
'Identificador de la casa cuna';
COMMENT ON COLUMN foster_petType.name_type
IS
'Nombre del tipo de mascota';