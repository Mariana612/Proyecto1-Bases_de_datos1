-------------------------------------------
-----------------USER_TYPE-----------------
CREATE TABLE user_type
(
    id_user_type NUMBER(6), 
    id_user NUMBER(6),           --PK & FK
    name_type VARCHAR2(20)
);

--alters--
--PK
ALTER TABLE user_type
ADD 
CONSTRAINT pk_user_type_idUser PRIMARY KEY (id_user_type)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE user_type
ADD CONSTRAINT FK_user_type_idUser
FOREIGN KEY (id_user) REFERENCES user_person(id);
--comments--
COMMENT ON TABLE user_type
IS
'Repositorio para almacenar tipos de usuario';
COMMENT ON COLUMN user_type.id_user_type IS 'Llave primaria de tabla user_type'; 
COMMENT ON COLUMN user_type.id_user
IS
'Identificador del tipo de usuario';
COMMENT ON COLUMN user_type.name_type
IS
'Nombre del tipo de usuario';