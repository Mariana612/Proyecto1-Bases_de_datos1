----------------------------------------
----------------LOGBOOK------------------
CREATE TABLE logbook
(
       id NUMBER(6),                        --PK
       
       entity_name VARCHAR(30) CONSTRAINT slogbook_EN_nn NOT NULL,
       description_log VARCHAR(30) CONSTRAINT logbook_Desc_nn NOT NULL,
       date_log DATE CONSTRAINT logbook_date_nn NOT NULL
);

--alters--
--PK
ALTER TABLE logbook
ADD 
CONSTRAINT pk_logbook PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE logbook
IS
'Repositorio para almacenar información de la bitácora';
COMMENT ON COLUMN logbook.id
IS
'Identificador del la bitácora';
COMMENT ON COLUMN logbook.entity_name
IS
'Nombre de la entidad modificada';
COMMENT ON COLUMN logbook.description_log
IS
'Descripción de la modificación';
COMMENT ON COLUMN logbook.date_log
IS
'Fecha de la modificación';
