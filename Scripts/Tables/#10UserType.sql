-------------------------------------------
-----------------USER_TYPE-----------------
CREATE TABLE user_type
(
    id NUMBER(6), 
    name_type VARCHAR2(20) CONSTRAINT  userType_nt_UNIQUE UNIQUE
);

--alters--
--PK
ALTER TABLE user_type
ADD 
CONSTRAINT pk_user_type_idUser PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--comments--
COMMENT ON TABLE user_type
IS
'Repositorio para almacenar tipos de usuario';
COMMENT ON COLUMN user_type.id IS 'Llave primaria de tabla user_type'; 
COMMENT ON COLUMN user_type.name_type
IS
'Nombre del tipo de usuario';



