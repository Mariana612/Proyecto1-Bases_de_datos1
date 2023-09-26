-----------------------------------------
--------------PARAMETER------------------
CREATE TABLE parameter_log
(
       id NUMBER(6),                        --PK
       
       name_parameter VARCHAR(30) CONSTRAINT PL_nameP_nn NOT NULL,
       type_value VARCHAR(30) CONSTRAINT PL_TypeValue_nn NOT NULL,
       value_parameter VARCHAR(30) CONSTRAINT PL_valueP_nn NOT NULL
);

--alters--
--PK
ALTER TABLE parameter_log
ADD 
CONSTRAINT pk_parameterLog PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE parameter_log
IS
'Repositorio para almacenar los parámetros';
COMMENT ON COLUMN parameter_log.id
IS
'Identificador del parámetro';
COMMENT ON COLUMN parameter_log.name_parameter
IS
'Nombre del parámetro';
COMMENT ON COLUMN parameter_log.type_value
IS
'Tipo de valor';
COMMENT ON COLUMN parameter_log.value_parameter
IS
'Tipo de valor';