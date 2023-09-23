-------------------------------------------
-------------PERSONAL_TEST-----------------
CREATE TABLE personal_test
(
       id NUMBER(6),                --PK
       test_name VARCHAR2(20) CONSTRAINT test_testName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE personal_test
ADD 
CONSTRAINT pk_personal_test PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE personal_test
IS
'Repositorio para almacenar la información de un test';
COMMENT ON COLUMN personal_test.id
IS
'Identificador del test';
COMMENT ON COLUMN personal_test.test_name
IS
'Nombre del test';