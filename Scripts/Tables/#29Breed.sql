-------------------------------------------
-------------------BREED-------------------
CREATE TABLE breed
(
       id NUMBER(6),          --PK
       breed_name VARCHAR2(20) CONSTRAINT breed_breedName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE breed
ADD 
CONSTRAINT pk_breed PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE breed
IS
'Repositorio para almacenar información sobre las razas de mascotas';
COMMENT ON COLUMN breed.id
IS
'Identificador de la raza';
COMMENT ON COLUMN breed.breed_name
IS
'Nombre de la raza';