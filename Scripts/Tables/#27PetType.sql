CREATE TABLE pet_type
(
       id NUMBER(6),       --PK
       type_name VARCHAR2(20) CONSTRAINT petType_typeName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE pet_type
ADD 
CONSTRAINT pk_pet_type PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE pet_type
IS
'Repositorio para almacenar el tipo de mascota';
COMMENT ON COLUMN pet_type.id
IS
'Identificador de el tipo mascota';
COMMENT ON COLUMN pet_type.type_name
IS
'Estado de la mascota';