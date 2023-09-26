--------------------------------------------
--------------------STATUS------------------
CREATE TABLE status
(
       id NUMBER(6),                        --PK
       status_name VARCHAR(30) CONSTRAINT status_name_nn NOT NULL
);

--alters--
--PK
ALTER TABLE status
ADD 
CONSTRAINT pk_status PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE status
IS
'Repositorio para almacenar tipos de estado en un formulario ';
COMMENT ON COLUMN status.id
IS
'Identificador del estado';
COMMENT ON COLUMN status.status_name
IS
'Nombre del estado';