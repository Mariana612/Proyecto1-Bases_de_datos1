-------------------------------------------
-----------------TELEPHONE-----------------
CREATE TABLE telephone
(
       id NUMBER(6),                --PK
       phone_number NUMBER(12) CONSTRAINT telephone_pn_nn NOT NULL
);

--alters--
--PK
ALTER TABLE telephone
ADD 
CONSTRAINT pk_telephone PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE telephone
IS
'Repositorio para almacenar información de teléfonos';
COMMENT ON COLUMN telephone.id
IS
'Identificador del teléfono';
COMMENT ON COLUMN telephone.phone_number
IS
'Número de teléfono';