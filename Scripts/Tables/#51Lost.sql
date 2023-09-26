-------------------------------------------
-----------------LOST----------------------
CREATE TABLE lost_pet
(
       id_pet NUMBER(6),                    --PK & FK
       id_currency NUMBER(6),               --FK
       id_district NUMBER(6),               --FK
       bounty NUMBER(8,2) CONSTRAINT lostPet_bounty_nn NOT NULL,
       date_lost DATE CONSTRAINT lostPet_date_nn NOT NULL
);
--alters--
--PK
ALTER TABLE lost_pet
ADD 
CONSTRAINT pk_lostPet_idPet PRIMARY KEY (id_pet)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE lost_pet
ADD CONSTRAINT FK_lostPet_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE lost_pet
ADD CONSTRAINT FK_lostPet_idCurrency
FOREIGN KEY (id_currency) REFERENCES currency(id);
--
ALTER TABLE lost_pet
ADD CONSTRAINT FK_lostPet_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);

--comments--
COMMENT ON TABLE lost_pet
IS
'Repositorio para almacenar información sobre mascotas perdidas';
COMMENT ON COLUMN lost_pet.id_pet
IS
'Identificador de la mascota';
COMMENT ON COLUMN lost_pet.id_currency
IS
'Id de la divisa';
COMMENT ON COLUMN lost_pet.id_district
IS
'Id del distrito donde se perdió la mascota';
COMMENT ON COLUMN lost_pet.bounty
IS
'Monto de recompensa por encontrar a la mascota';
COMMENT ON COLUMN lost_pet.date_lost
IS
'Fecha en la que se perdió la mascota';