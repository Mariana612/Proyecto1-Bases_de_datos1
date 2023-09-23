-------------------------------------------
------------------DISTRICT-----------------
CREATE TABLE district
(
       id NUMBER(6),                --PK
       district_name VARCHAR(30) CONSTRAINT district_dName_nn NOT NULL,
       id_canton NUMBER(6)	    --FK
);

--alters--
--PK
ALTER TABLE district
ADD 
CONSTRAINT pk_district PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE district
ADD CONSTRAINT FK_district_id_canton
FOREIGN KEY (id_canton) REFERENCES canton(id);

--comments--
COMMENT ON TABLE district
IS
'Repositorio para almacenar la informacion de un distrito';
COMMENT ON COLUMN district.id
IS
'Identificador del distrito';
COMMENT ON COLUMN district.district_name
IS
'Nombre del distrito';
COMMENT ON COLUMN district.id_canton
IS
'Id del canton al que pertenece';


