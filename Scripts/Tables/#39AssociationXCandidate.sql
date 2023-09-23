-------------------------------------------
-----------ASSOCIATIONxCANDIDATE-----------
CREATE TABLE associationXcandidate
(
       id_association NUMBER(6),        --PK & FK
       id_candidate NUMBER(6),          --PK & FK
       calification NUMBER(5,2),
       notes VARCHAR(500)
);

--alters--
--PK
ALTER TABLE associationXcandidate
ADD 
CONSTRAINT pk_AxC PRIMARY KEY (id_association,id_candidate)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE associationXcandidate
ADD CONSTRAINT FK_AxC_idAssociation
FOREIGN KEY (id_association) REFERENCES association(id_legal);
--
ALTER TABLE associationXcandidate
ADD CONSTRAINT FK_AxC_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);

--comments--
COMMENT ON TABLE associationXcandidate
IS
'Repositorio para que las asociaciones puedan revisar y dar una calificación a los candidatos';

COMMENT ON COLUMN associationXcandidate.id_association
IS
'Identificador de la asociación';
COMMENT ON COLUMN associationXcandidate.id_candidate
IS
'Identificador del candidato';
COMMENT ON COLUMN associationXcandidate.calification
IS
'Calificación del candidato';
COMMENT ON COLUMN associationXcandidate.notes
IS
'Notas sobre la calificación';
