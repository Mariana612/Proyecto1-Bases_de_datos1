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

-------------------------------------------
-----------------LOST----------------------
CREATE TABLE lost_pet
(
       id_pet NUMBER(6),                    --PK & FK
       id_lost_pet NUMBER(6) UNIQUE,        -- CANDIDATE KEY
       id_currency NUMBER(6),               --FK

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
-------------------------------------------
---------------LOSTxDISTRICT---------------
CREATE TABLE lostXdistrict
(
       id_lost NUMBER(6),           --PK & FK
       id_district NUMBER(6)        --PK & FK
);

--alters--
--PK
ALTER TABLE lostXdistrict
ADD 
CONSTRAINT pk_LxD PRIMARY KEY (id_lost,id_district)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE lostXdistrict
ADD CONSTRAINT FK_LxD_idLost
FOREIGN KEY (id_lost) REFERENCES lost_pet(id_pet);
--
ALTER TABLE lostXdistrict
ADD CONSTRAINT FK_LxD_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);
-------------------------------------------
------------------------------------------------------------------------------
-------------------------------------------
----------------FOUND_PET------------------
CREATE TABLE found_pet
(
       id_pet NUMBER(6),                    --PK & FK
       id_found_pet NUMBER(6) UNIQUE,        -- CANDIDATE KEY
       date_found DATE CONSTRAINT foundPet_date_nn NOT NULL
);
--alters--
--PK
ALTER TABLE found_pet
ADD 
CONSTRAINT pk_foundPet_idPet PRIMARY KEY (id_pet)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE found_pet
ADD CONSTRAINT FK_foundPet_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);

-------------------------------------------
---------------FOUNDxDISTRICT---------------
CREATE TABLE foundXdistrict
(
       id_found NUMBER(6),           --PK & FK
       id_district NUMBER(6)        --PK & FK
);

--alters--
--PK
ALTER TABLE foundXdistrict
ADD 
CONSTRAINT pk_FxD PRIMARY KEY (id_found,id_district)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE foundXdistrict
ADD CONSTRAINT FK_FxD_idFound
FOREIGN KEY (id_found) REFERENCES found_pet(id_pet);
--
ALTER TABLE foundXdistrict
ADD CONSTRAINT FK_FxD_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);
-------------------------------------------
--
--DROP TABLE foundXdistrict;
--DROP TABLE found_pet;
--DROP TABLE lostXdistrict;
--DROP TABLE lost_pet;
--DROP TABLE currency;
