-------------------------------------------
-------------RESCUERxCANDIDATE-------------
CREATE TABLE rescuerXcandidate
(
       id_rescuer NUMBER(6),            --PK & FK
       id_candidate NUMBER(6),          --PK & FK
       calification NUMBER(5,2),
       notes VARCHAR(500)
);

--alters--
--PK
ALTER TABLE rescuerXcandidate
ADD 
CONSTRAINT pk_RxC PRIMARY KEY (id_rescuer,id_candidate)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE rescuerXcandidate
ADD CONSTRAINT FK_RxC_idAssociation
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);
--
ALTER TABLE rescuerXcandidate
ADD CONSTRAINT FK_RxC_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);

--comments--
COMMENT ON TABLE rescuerXcandidate
IS
'Repositorio para que los rescatistas puedan revisar y dar una calificación a los candidatos';

COMMENT ON COLUMN rescuerXcandidate.id_rescuer
IS
'Identificador del rescatista';
COMMENT ON COLUMN rescuerXcandidate.id_candidate
IS
'Identificador del candidato';
COMMENT ON COLUMN rescuerXcandidate.calification
IS
'Calificación del candidato';
COMMENT ON COLUMN rescuerXcandidate.notes
IS
'Notas sobre la calificación';
