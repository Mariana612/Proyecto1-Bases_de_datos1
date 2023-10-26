--1) hacer un alter de la tabla pet

ALTER TABLE pet
MODIFY id_pet_status NUMBER CONSTRAINT pet_id_status_nn NOT NULL;
ALTER TABLE pet
MODIFY id_pet_type NUMBER CONSTRAINT pet_id_type_nn NOT NULL;

--2)borrar el id_breed de la tabla pet

ALTER TABLE pet
DROP COLUMN id_breed;

--3)borrar la tabla breed

drop table breed

--4)correr la nueva tabla breed

--5)agregar de nuevo el id_breed 
ALTER TABLE pet
ADD id_breed NUMBER (6);

ALTER TABLE pet
ADD CONSTRAINT FK_id_breed
FOREIGN KEY (id_breed) REFERENCES breed(id);

COMMENT ON COLUMN pet.id_breed
IS
'Identificador de la raza';

--6) hacer un alter table a la tabla color
ALTER TABLE color
ADD CONSTRAINT color_name_unique UNIQUE (color_name);

--6) agregar secuencias

CREATE SEQUENCE sPet
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 


CREATE SEQUENCE sPetStatus
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE sBreed
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 

CREATE SEQUENCE sPetType
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 

CREATE SEQUENCE sColor
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  NOCYCLE; 