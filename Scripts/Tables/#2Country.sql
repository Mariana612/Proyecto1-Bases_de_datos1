-------------------------------------------
------------------COUNTRY------------------
CREATE TABLE country
(
       id NUMBER(6),                --PK
       id_continent NUMBER(6),       --FK
       country_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE country
ADD 
CONSTRAINT pk_country PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE country
ADD CONSTRAINT FK_country_id_continent
FOREIGN KEY (id_continent) REFERENCES continent(id);

--comments--
COMMENT ON TABLE country
IS
'Repositorio para almacenar la informacion de un país';
COMMENT ON COLUMN country.id
IS
'Identificador del país';
COMMENT ON COLUMN country.country_name
IS
'Nombre del país';
COMMENT ON COLUMN country.id_continent
IS
'Id del continente al que pertenece';