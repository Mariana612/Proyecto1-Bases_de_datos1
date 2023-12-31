-------------------------------------------
-------------------PERSON------------------
CREATE TABLE person
(
       id NUMBER(6),                --PK
       first_name VARCHAR2(40)CONSTRAINT person_firstName_nn NOT NULL,
       CONSTRAINT first_name_format CHECK (REGEXP_LIKE(first_name, '^[a-zA-Z0-9]+$')), -- first_name contains only alphanumeric characters
       middle_name VARCHAR2(40),
       CONSTRAINT middle_name_format CHECK (REGEXP_LIKE(middle_name, '^[a-zA-Z0-9]+$')), -- middle_name contains only alphanumeric characters
       first_last_name VARCHAR2(40)CONSTRAINT person_middleName_nn NOT NULL,
       CONSTRAINT first_last_name CHECK (REGEXP_LIKE(first_last_name, '^[a-zA-Z0-9]+$')), -- first_last_name contains only alphanumeric characters
       second_last_name VARCHAR2(40),
       CONSTRAINT second_last_name CHECK (REGEXP_LIKE(second_last_name, '^[a-zA-Z0-9]+$')) -- second_last_name contains only alphanumeric characters
  
);
--alters--
--PK
ALTER TABLE person
ADD 
CONSTRAINT pk_person PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
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
FOREIGN KEY (id_district) REFERENCES person(id);
-------------------------------------------
------------------EMAIL--------------------
CREATE TABLE email
(
       id NUMBER(6),                --PK
       id_person NUMBER(6),         --FK
       email_text VARCHAR2(20) CONSTRAINT email_email_text_nn UNIQUE NOT NULL,
       CONSTRAINT email_emailText_format CHECK (REGEXP_LIKE(email_text, '^[a-zA-Z0-9_]+$')), -- email contains only alphanumeric characters and underscores
       CONSTRAINT email_emailText_no_spaces CHECK (NOT REGEXP_LIKE(email_text, '\s')) -- email should not contain spaces
);

--alters--
--PK
ALTER TABLE email
ADD 
CONSTRAINT pk_email PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE email
ADD CONSTRAINT FK_email_idperson
FOREIGN KEY (id_person) REFERENCES person(id);
-------------------------------------------
------------------USER---------------------
CREATE TABLE user_person
(
       id NUMBER(6),                --PK
       id_person NUMBER(6),         --FK
       username VARCHAR2(20) CONSTRAINT userPerson_username_nn UNIQUE NOT NULL,
       
       CHECK (LENGTH(username) >= 6 AND LENGTH(username) <= 20), -- Username lencht between 6 and 20
       CONSTRAINT username_format CHECK (REGEXP_LIKE(username, '^[a-zA-Z0-9_]+$')), -- Username contains only alphanumeric characters and underscores
       CONSTRAINT username_no_spaces CHECK (NOT REGEXP_LIKE(username, '\s')) -- Username should not contain spaces
);

--alters--
--PK
ALTER TABLE user_person
ADD 
CONSTRAINT pk_user_person PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE user_person
ADD CONSTRAINT FK_userPerson_idperson
FOREIGN KEY (id_person) REFERENCES person(id);
-------------------------------------------
-----------------USER_TYPE-----------------
CREATE TABLE user_type
(
       id_user NUMBER(6),           --PK & FK
       name_type VARCHAR2(20)
);

--alters--
--PK
ALTER TABLE user_type
ADD 
CONSTRAINT pk_user_type_idUser PRIMARY KEY (id_user)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE user_type
ADD CONSTRAINT FK_user_type_idUser
FOREIGN KEY (id_user) REFERENCES user_person(id);
-------------------------------------------
------------------PASSWORD-----------------
CREATE TABLE user_password
(
       id NUMBER(6),                --PK
       id_user NUMBER(6),           --FK
       name_type VARCHAR2(20) CONSTRAINT userPassword_nameType_nn NOT NULL
);

--alters--
--PK
ALTER TABLE user_password
ADD 
CONSTRAINT pk_userPassword_idUser PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE user_password
ADD CONSTRAINT FK_userPassword_idUser
FOREIGN KEY (id_user) REFERENCES user_person(id);
-------------------------------------------
---------------LEGAL_PERSON----------------
CREATE TABLE legal_person
(
       id_legal NUMBER(6)           -- PK & FK
);

--alters--
--PK
ALTER TABLE legal_person
ADD 
CONSTRAINT pk_legalPerson PRIMARY KEY (id_legal)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE legal_person
ADD CONSTRAINT FK_legal_person
FOREIGN KEY (id_legal) REFERENCES person(id);
-------------------------------------------
-------------ASSOCIATION-----------------
CREATE TABLE association
(
       id_legal NUMBER(6),               -- PK & FK
       association_name VARCHAR2(20)CONSTRAINT association_associationName_nn UNIQUE NOT NULL
);

--alters--
--PK
ALTER TABLE association
ADD 
CONSTRAINT pk_association PRIMARY KEY (id_legal)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);
--FK
ALTER TABLE association
ADD CONSTRAINT FK_associationid
FOREIGN KEY (id_legal) REFERENCES legal_person(id_legal);
-----------------------------------------

--DROP TABLE association;
--DROP TABLE legal_person;
--DROP TABLE user_password;
--DROP TABLE user_type;
--DROP TABLE user_person;
--DROP TABLE email;
--DROP TABLE personXdistrict;
--DROP TABLE person;

