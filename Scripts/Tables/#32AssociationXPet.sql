-------------------------------------------
--------------ASSOCIATIONxPET--------------
CREATE TABLE associationXpet
(
       id_pet NUMBER(6),            --PK & FK
       id_association NUMBER(6),    --PK & FK
       amount_spent NUMBER(12),
       date_in DATE CONSTRAINT AXP_date_in_nn NOT NULL
);

--alters--
--PK
ALTER TABLE associationXpet
ADD 
CONSTRAINT pk_associationXpet PRIMARY KEY (id_pet,id_association)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE associationXpet
ADD CONSTRAINT FK_axp_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE associationXpet
ADD CONSTRAINT FK_axp_idAssociation
FOREIGN KEY (id_association) REFERENCES association(id_legal);

--comments--
COMMENT ON TABLE associationXpet
IS
'Repositorio para almacenar las mascotas que son registradas por asociaciones';

COMMENT ON COLUMN associationXpet.id_association
IS
'Identificador de la asociación';
COMMENT ON COLUMN associationXpet.amount_spent
IS
'Monto de dinero gastado en el rescate de la mascota';
COMMENT ON COLUMN associationXpet.date_in
IS
'Día de registro de la mascota en adopción';
COMMENT ON COLUMN associationXpet.id_pet
IS
'Identificador de la mascota';