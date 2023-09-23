-------------------------------------------
-----------------CONTINENT-----------------
CREATE TABLE continent
(
       id NUMBER(6),                --PK
       continent_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE continent
ADD 
CONSTRAINT pk_continent PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE continent
IS
'Repositorio para almacenar la informacion de un continente';
COMMENT ON COLUMN continent.id
IS
'Identificador del país';
COMMENT ON COLUMN continent.continent_name
IS
'Nombre del continente';