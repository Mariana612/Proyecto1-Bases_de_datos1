-------------------------------------------
-------------------CANTON------------------
CREATE TABLE canton
(
       id NUMBER(6),                --PK
       id_province NUMBER(6),       --FK
       canton_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE canton
ADD 
CONSTRAINT pk_canton PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE canton
ADD CONSTRAINT FK_canton_id_province
FOREIGN KEY (id_province) REFERENCES province(id);

--comments--
COMMENT ON TABLE canton
IS
'Repositorio para almacenar la informacion de un canton';
COMMENT ON COLUMN canton.id
IS
'Identificador del canton';
COMMENT ON COLUMN canton.canton_name
IS
'Nombre del canton';
COMMENT ON COLUMN canton.id_province
IS
'Id de la provincia a la que pertenece';