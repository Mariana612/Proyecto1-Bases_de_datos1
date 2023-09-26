-------------------------------------------
------------------DONATION-----------------
CREATE TABLE donation
(
       id NUMBER(6),                --PK
       id_foster_home NUMBER (6),   --FK
       id_type NUMBER (6)           --FK
);

--alters--
--PK
ALTER TABLE donation
ADD 
CONSTRAINT pk_donation_id PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE donation
ADD CONSTRAINT FK_donation_idFosterHome
FOREIGN KEY (id_foster_home) REFERENCES foster_home(id_physical);

ALTER TABLE donation
ADD CONSTRAINT FK_donation_idType
FOREIGN KEY (id_type) REFERENCES donation_type(id);

--comments--
COMMENT ON TABLE donation
IS
'Repositorio para almacenar las donaciones';
COMMENT ON COLUMN donation.id
IS
'Identificador de la donación';
COMMENT ON COLUMN donation.id_foster_home
IS
'Identificación de la casa cuna';
COMMENT ON COLUMN donation.id_type
IS
'Identificación del tipo de donación';