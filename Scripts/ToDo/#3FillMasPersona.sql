
CREATE TABLE telephone_type(
    id          NUMBER(6)       CONSTRAINT telephone_type_id_nn NOT NULL, 
    type_name   VARCHAR2(25)    CONSTRAINT telephone_type_name_nn NOT NULL 
);
ALTER TABLE telephone_type ADD CONSTRAINT pk_telephone_type PRIMARY KEY (id) USING INDEX TABLESPACE Proyecto1_ind PCTFREE 20 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
COMMENT ON TABLE telephone_type IS 'Stores telephone types added by SDBA';
COMMENT ON COLUMN telephone_type.id IS 'Primary key for telephone type';
COMMENT ON COLUMN telephone_type.type_name IS 'Text for name of type of phone';
drop table telephoneXperson;
drop table telephone;

CREATE TABLE telephone
(
       id NUMBER(6),                --PK
       id_telephone_type NUMBER(6),
       phone_number NUMBER(12) CONSTRAINT telephone_pn_nn NOT NULL
);

--alters--
--PK
ALTER TABLE telephone ADD CONSTRAINT pk_telephone PRIMARY KEY (id) USING INDEX TABLESPACE Proyecto1_ind PCTFREE 20 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
ALTER TABLE telephone ADD CONSTRAINT fk_telephone_telephone_type FOREIGN KEY (id_telephone_type) REFERENCES telephone_type(id);

--comments--
COMMENT ON TABLE telephone IS 'Repositorio para almacenar información de teléfonos';
COMMENT ON COLUMN telephone.id IS 'Identificador del teléfono';
COMMENT ON COLUMN telephone.phone_number IS 'Número de teléfono';


ALTER TABLE person ADD id_gender NUMBER(6);

alter table person add constraint fk_person_gender FOREIGN KEY (id_gender) REFERENCES gender(id);

comment on column person.id_gender IS 'fk that references gender typed table';

insert into gender(id, name_gender) VALUES (1, 'Male');
insert into gender(id, name_gender) VALUES (2, 'Female');
insert into gender(id, name_gender) VALUES (3, 'Other');

INSERT INTO telephone_type(id, type_name)

  CREATE SEQUENCE sTelephone_type
  START WITH 1
  INCREMENT BY 1
  MINVALUE 1
  MAXVALUE 100
  NOCACHE
  NOCYCLE;

INSERT INTO telephone_type(id, type_name) VALUES(sTelephone_type.NEXTVAL, 'Home');
INSERT INTO telephone_type(id, type_name) VALUES(sTelephone_type.NEXTVAL, 'Work');
INSERT INTO telephone_type(id, type_name) VALUES(sTelephone_type.NEXTVAL, 'Personal');
INSERT INTO telephone_type(id, type_name) VALUES(sTelephone_type.NEXTVAL, 'Corporate');
INSERT INTO telephone_type(id, type_name) VALUES(sTelephone_type.NEXTVAL, 'Other');



