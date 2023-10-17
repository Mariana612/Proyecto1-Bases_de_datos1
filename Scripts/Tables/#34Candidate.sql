-----------------CANDIDATE-----------------
CREATE TABLE candidate
(
       id_physical NUMBER(6),               --PK & FK
       id_test NUMBER(6)                   --FK

);
--alters--
--PK
ALTER TABLE candidate
ADD 
CONSTRAINT pk_candidate_idPhysical PRIMARY KEY (id_physical)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE candidate
ADD CONSTRAINT FK_candidate_idPhysical
FOREIGN KEY (id_physical) REFERENCES physical_person(id_physical);
--
ALTER TABLE candidate
ADD CONSTRAINT FK_candidate_idtest
FOREIGN KEY (id_test) REFERENCES personal_test(id);

--comments--
COMMENT ON TABLE candidate
IS
'Repositorio para almacenar información sobre las personas que son candidatas';

COMMENT ON COLUMN candidate.id_physical
IS
'Identificador del candidato';


