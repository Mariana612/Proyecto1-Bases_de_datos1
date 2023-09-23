--------------------------------------------
-----------------BLACK_LIST-----------------
CREATE TABLE black_list
(
       id NUMBER(6),                        --PK
       id_association NUMBER(6),            --FK
       id_rescuer NUMBER(6),                --FK
       blackList_name VARCHAR(30) CONSTRAINT blackList_name_nn NOT NULL
);

--alters--
--PK
ALTER TABLE black_list
ADD 
CONSTRAINT pk_blackList PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE black_list
ADD CONSTRAINT FK_blackList_idAsso
FOREIGN KEY (id_association) REFERENCES association(id_legal);
--
ALTER TABLE black_list
ADD CONSTRAINT FK_blackList_idRescuer
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);

--comments--
COMMENT ON TABLE black_list
IS
'Repositorio para almacenar información sobre una lista negra';
COMMENT ON COLUMN black_list.id
IS
'Identificador de la lista negra';
COMMENT ON COLUMN black_list.id_association
IS
'Identificador de la asociación';
COMMENT ON COLUMN black_list.id_rescuer
IS
'Identificador del rescatista';
COMMENT ON COLUMN black_list.blackList_name
IS
'Nombre de la lista negra';