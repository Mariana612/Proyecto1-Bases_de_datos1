-------------------------------------------
------------------EMAIL--------------------
CREATE TABLE email
(
       id NUMBER(6),                --PK
       id_person NUMBER(6),         --FK
       email_text VARCHAR2(30) CONSTRAINT email_email_text_nn UNIQUE NOT NULL,
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

--comments--
COMMENT ON TABLE email
IS
'Repositorio para almacenar la información de un email';
COMMENT ON COLUMN email.id
IS
'Identificador del email';
COMMENT ON COLUMN email.id_person
IS
'Identificador de la persona';
COMMENT ON COLUMN email.email_text
IS
'Texto que contiene el email';