--------------------------------------------
------------------CURRENCY------------------
CREATE TABLE currency
(
       id NUMBER(6),                --PK
       currency_name VARCHAR(30) CONSTRAINT currency_CN_nn NOT NULL
);

--alters--
--PK
ALTER TABLE currency
ADD 
CONSTRAINT pk_currency PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE currency
IS
'Repositorio para almacenar las divisas';
COMMENT ON COLUMN currency.id
IS
'Identificador de la divisa';
COMMENT ON COLUMN currency.currency_name
IS
'Nombre de la divisa';