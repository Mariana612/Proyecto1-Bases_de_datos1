--------------------------------------------
-----------------BLACK_LIST-----------------
CREATE TABLE black_list
(
       id NUMBER(6),                        --PK
       id_association NUMBER(6),            --FK
       id_rescuer NUMBER(6),                --FK
       blackList_name VARCHAR(30) CONSTRAINT blackList_name_nn NOT NULL
);

--alters--
--PK
ALTER TABLE black_list
ADD 
CONSTRAINT pk_blackList PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE black_list
ADD CONSTRAINT FK_blackList_idAsso
FOREIGN KEY (id_association) REFERENCES association(id_legal);
--
ALTER TABLE black_list
ADD CONSTRAINT FK_blackList_idRescuer
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);
-------------------------------------------
-----------BLACK_LISTxPHYSICAL-------------
CREATE TABLE black_listxPhysical
(
       id_physical NUMBER(6),           --PK & FK
       id_black_list NUMBER(6)        --PK & FK
);

--alters--
--PK
ALTER TABLE black_listxPhysical
ADD 
CONSTRAINT pk_BLxP PRIMARY KEY (id_physical,id_black_list)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE black_listxPhysical
ADD CONSTRAINT FK_BLxP_idPhysical
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
--
ALTER TABLE black_listxPhysical
ADD CONSTRAINT FK_BLxP_idBL
FOREIGN KEY (id_black_list) REFERENCES black_list(id);
-------------------------------------------

--DROP TABLE black_listxPhysical;
--DROP TABLE black_list;
