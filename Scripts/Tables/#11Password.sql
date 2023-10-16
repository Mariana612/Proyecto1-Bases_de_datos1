-------------------------------------------
------------------PASSWORD-----------------
CREATE TABLE user_password
(
       id NUMBER(6),                --PK
       id_user NUMBER(6),           --FK
       name_type VARCHAR2(20) CONSTRAINT userPassword_nameType_nn NOT NULL
);

--alters--
--PK
ALTER TABLE user_password
ADD 
CONSTRAINT pk_userPassword_idUser PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE user_password
ADD CONSTRAINT FK_userPassword_idUser
FOREIGN KEY (id_user) REFERENCES user_person(id);

--comments--
COMMENT ON TABLE user_password
IS
'Repositorio para almacenar contraseñas de usuario';
COMMENT ON COLUMN user_password.id
IS
'Identificador de la contraseña';
COMMENT ON COLUMN user_password.id_user
IS
'Identificador del usuario';
COMMENT ON COLUMN user_password.name_type
IS
'Contraseña de usuario';

