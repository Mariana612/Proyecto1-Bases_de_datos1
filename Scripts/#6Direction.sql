-------------------------------------------
------------------DISTRICT-----------------
CREATE TABLE district
(
       id NUMBER(6),                --PK
       district_name VARCHAR(30) CONSTRAINT district_dName_nn NOT NULL
);

--alters--
--PK
ALTER TABLE district
ADD 
CONSTRAINT pk_district PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

-------------------------------------------
-------------------CANTON------------------
CREATE TABLE canton
(
       id NUMBER(6),                --PK
       id_district NUMBER(6),       --FK
       canton_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE canton
ADD 
CONSTRAINT pk_canton PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE canton
ADD CONSTRAINT FK_canton_id_district
FOREIGN KEY (id_district) REFERENCES district(id);
-------------------------------------------
------------------PROVINCE-----------------
CREATE TABLE province
(
       id NUMBER(6),                --PK
       id_canton NUMBER(6),         --FK
       province_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE province
ADD 
CONSTRAINT pk_province PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE province
ADD CONSTRAINT FK_province_id_canton
FOREIGN KEY (id_canton) REFERENCES canton(id);
-------------------------------------------
------------------COUNTRY------------------
CREATE TABLE country
(
       id NUMBER(6),                --PK
       id_province NUMBER(6),       --FK
       country_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE country
ADD 
CONSTRAINT pk_country PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE country
ADD CONSTRAINT FK_country_id_province
FOREIGN KEY (id_province) REFERENCES province(id);
-------------------------------------------
-----------------CONTINENT-----------------
CREATE TABLE continent
(
       id NUMBER(6),                --PK
       id_country NUMBER(6),        --FK
       continent_name VARCHAR(30)      
);

--alters--
--PK
ALTER TABLE continent
ADD 
CONSTRAINT pk_continent PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE continent
ADD CONSTRAINT FK_continent_id_country
FOREIGN KEY (id_country) REFERENCES country(id);
-------------------------------------------

--DROP TABLE continent;
--DROP TABLE country;
--DROP TABLE province;
--DROP TABLE canton;
--DROP TABLE district;
