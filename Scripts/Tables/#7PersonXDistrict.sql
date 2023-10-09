-------------------------------------------
--------------PERSONxDISTRICT--------------
CREATE TABLE personXdistrict
(
       id_person NUMBER(6),         --PK & FK
       id_district NUMBER(6)        --PK & FK
);

--alters--
--PK
ALTER TABLE personXdistrict
ADD 
CONSTRAINT pk_personXdistrict PRIMARY KEY (id_person,id_district)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE personXdistrict
ADD CONSTRAINT FK_PxD_idPerson
FOREIGN KEY (id_person) REFERENCES person(id);
--
ALTER TABLE personXdistrict
ADD CONSTRAINT FK_PxD_idDistrict
FOREIGN KEY (id_district) REFERENCES district(id);

--comments--
COMMENT ON TABLE personXdistrict
IS
'Repositorio para almacenar la dirección de vivienda de una persona';
COMMENT ON COLUMN personXdistrict.id_person
IS
'Identificador de la persona';
COMMENT ON COLUMN personXdistrict.id_district
IS
'Identificador del distrito';

