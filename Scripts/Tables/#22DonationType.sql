-------------------------------------------
---------------DONATION_TYPE---------------
CREATE TABLE donation_type
(
       id NUMBER(6),                --PK
       donation_description VARCHAR(20) CONSTRAINT DT_donationDescription_nn NOT NULL
);

--alters--
--PK
ALTER TABLE donation_type
ADD 
CONSTRAINT pk_donationType_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--comments--
COMMENT ON TABLE donation_type
IS
'Repositorio para almacenar el tipo de donación';
COMMENT ON COLUMN donation_type.id
IS
'Identificador de la donación';
COMMENT ON COLUMN donation_type.donation_description
IS
'Descripción de la donación';