-------------------------------------------
------------------USER---------------------
CREATE TABLE user_person
(
       id NUMBER(6),                --PK
       id_person NUMBER(6),         --FK
       username VARCHAR2(20) CONSTRAINT userPerson_username_nn UNIQUE NOT NULL,
       
       CHECK (LENGTH(username) >= 6 AND LENGTH(username) <= 20), -- Username lencht between 6 and 20
       CONSTRAINT username_format CHECK (REGEXP_LIKE(username, '^[a-zA-Z0-9_]+$')), -- Username contains only alphanumeric characters and underscores
       CONSTRAINT username_no_spaces CHECK (NOT REGEXP_LIKE(username, '\s')) -- Username should not contain spaces
);

--alters--
--PK
ALTER TABLE user_person
ADD 
CONSTRAINT pk_user_person PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE user_person
ADD CONSTRAINT FK_userPerson_idperson
FOREIGN KEY (id_person) REFERENCES person(id);

--comments--
COMMENT ON TABLE user_person
IS
'Repositorio para almacenar una persona como usuario';
COMMENT ON COLUMN user_person.id
IS
'Identificador del usuario';
COMMENT ON COLUMN user_person.id_person
IS
'Identificador de la persona';
COMMENT ON COLUMN user_person.username
IS
'Nombre de usuario';