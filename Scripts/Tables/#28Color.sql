-------------------------------------------
-------------------COLOR-------------------
CREATE TABLE color
(
       id NUMBER(6),                --PK
       color_name VARCHAR2(20) CONSTRAINT color_colorName_nn NOT NULL,
       CONSTRAINT color_name_unique UNIQUE (color_name)

);

--alters--
--PK
ALTER TABLE color
ADD 
CONSTRAINT pk_color PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE color
IS
'Repositorio para almacenar información sobre colores';
COMMENT ON COLUMN color.id
IS
'Identificador del color';
COMMENT ON COLUMN color.color_name
IS
'Nombre del color';


