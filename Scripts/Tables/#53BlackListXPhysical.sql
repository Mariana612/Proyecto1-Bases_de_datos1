-------------------------------------------
-----------BLACK_LISTxPHYSICAL-------------
CREATE TABLE black_listxPhysical
(
       id_physical NUMBER(6),           --PK & FK
       id_black_list NUMBER(6)        --PK & FK
);

--alters--
--PK
ALTER TABLE black_listxPhysical
ADD 
CONSTRAINT pk_BLxP PRIMARY KEY (id_physical,id_black_list)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE black_listxPhysical
ADD CONSTRAINT FK_BLxP_idPhysical
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
--
ALTER TABLE black_listxPhysical
ADD CONSTRAINT FK_BLxP_idBL
FOREIGN KEY (id_black_list) REFERENCES black_list(id);

--comments--
COMMENT ON TABLE black_listxPhysical
IS
'Repositorio para almacenar personas en una lista negra ';
COMMENT ON COLUMN black_listxPhysical.id_black_list
IS
'Identificador de la lista negra';
COMMENT ON COLUMN black_listxPhysical.id_physical
IS
'Identificador de la persona';