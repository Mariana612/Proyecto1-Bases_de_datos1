-------------------------------------------
------------------PROVINCE-----------------
CREATE TABLE province
(
       id NUMBER(6),                --PK
       id_country NUMBER(6),         --FK
       province_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE province
ADD 
CONSTRAINT pk_province PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE province
ADD CONSTRAINT FK_province_id_country
FOREIGN KEY (id_country) REFERENCES country(id);

--comments--
COMMENT ON TABLE province
IS
'Repositorio para almacenar la informacion de una provincia';
COMMENT ON COLUMN province.id
IS
'Identificador de la provincia';
COMMENT ON COLUMN province.province_name
IS
'Nombre de la provincia';
COMMENT ON COLUMN province.id_country
IS
'Id del país al que pertenece';