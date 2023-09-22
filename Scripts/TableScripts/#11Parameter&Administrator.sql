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

-----------------------------------------
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
-----------------------------------------

--DROP TABLE parameter_log;
--DROP TABLE logbook;