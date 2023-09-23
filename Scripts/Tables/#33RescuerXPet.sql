-------------------------------------------
----------------RESCUERxPET----------------
CREATE TABLE rescuerXpet
(
       id_pet NUMBER(6),            --PK & FK
       id_rescuer NUMBER(6),        --PK & FK
       amount_spent NUMBER(12),
       date_in DATE CONSTRAINT RXP_date_in_nn NOT NULL
);

--alters--
--PK
ALTER TABLE rescuerXpet
ADD 
CONSTRAINT pk_rescuerXpet PRIMARY KEY (id_pet,id_rescuer)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuerXpet
ADD CONSTRAINT FK_rxp_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE rescuerXpet
ADD CONSTRAINT FK_rxp_idRescuer
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);

--comments--
COMMENT ON TABLE rescuerXpet
IS
'Repositorio para almacenar las mascotas que son registradas por rescatistas';

COMMENT ON COLUMN rescuerXpet.id_rescuer
IS
'Identificador del rescatista';
COMMENT ON COLUMN rescuerXpet.amount_spent
IS
'Monto de dinero gastado en el rescate de la mascota';
COMMENT ON COLUMN rescuerXpet.date_in
IS
'Día de registro de la mascota en adopción';
COMMENT ON COLUMN rescuerXpet.id_pet
IS
'Identificador de la mascota';