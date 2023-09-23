-------------------------------------------
--------PERSONAL_QUESTION_TEST-------------
CREATE TABLE personal_question_test
(
       id NUMBER(6),                --PK
       id_test NUMBER(6),           --FK
       answer VARCHAR2(50) CONSTRAINT PQT_answer_nn NOT NULL,
       PQT_description VARCHAR2(50) CONSTRAINT PQT_description_nn NOT NULL
);

--alters--
--PK
ALTER TABLE personal_question_test
ADD 
CONSTRAINT pk_PQT_test PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE personal_question_test
ADD CONSTRAINT FK_PQT_idTest
FOREIGN KEY (id_test) REFERENCES personal_test(id);

--comments--
COMMENT ON TABLE personal_question_test
IS
'Repositorio para almacenar las preguntas del test';
COMMENT ON COLUMN personal_question_test.id
IS
'Identificador de pregunta del test';
COMMENT ON COLUMN personal_question_test.id_test
IS
'Identificador del test';
COMMENT ON COLUMN personal_question_test.answer
IS
'Respuesta de la pregunta del test';
COMMENT ON COLUMN personal_question_test.PQT_description
IS
'Descripción del test';