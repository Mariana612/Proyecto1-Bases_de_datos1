-------------------------------------------
-------------------PERSON------------------
CREATE TABLE person
(
       id NUMBER(6),                --PK
       first_name VARCHAR2(40)CONSTRAINT person_firstName_nn NOT NULL,
       CONSTRAINT first_name_format CHECK (REGEXP_LIKE(first_name, '^[a-zA-Z0-9]+$')), -- first_name contains only alphanumeric characters
       middle_name VARCHAR2(40),
       CONSTRAINT middle_name_format CHECK (REGEXP_LIKE(middle_name, '^[a-zA-Z0-9]+$')), -- middle_name contains only alphanumeric characters
       first_last_name VARCHAR2(40)CONSTRAINT person_middleName_nn NOT NULL,
       CONSTRAINT first_last_name CHECK (REGEXP_LIKE(first_last_name, '^[a-zA-Z0-9]+$')), -- first_last_name contains only alphanumeric characters
       second_last_name VARCHAR2(40),
       CONSTRAINT second_last_name CHECK (REGEXP_LIKE(second_last_name, '^[a-zA-Z0-9]+$')) -- second_last_name contains only alphanumeric characters
  
);
--alters--
--PK
ALTER TABLE person
ADD 
CONSTRAINT pk_person PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE person
IS
'Repositorio para almacenar la informacion de una persona';
COMMENT ON COLUMN person.id
IS
'Identificador de la persona';
COMMENT ON COLUMN person.first_name
IS
'Primer nombre de la persona';
COMMENT ON COLUMN person.middle_name
IS
'Segundo nombre de la persona';
COMMENT ON COLUMN person.first_last_name
IS
'Primer apellido de la persona';
COMMENT ON COLUMN person.second_last_name
IS
'Segundo apellido de la persona';