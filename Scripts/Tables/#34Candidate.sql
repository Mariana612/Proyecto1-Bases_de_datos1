-----------------CANDIDATE-----------------
CREATE TABLE candidate
(
       id_physical NUMBER(6),               --PK & FK
       id_test NUMBER(6),                   --FK
       own_house VARCHAR(3) CONSTRAINT own_house_bool CHECK (own_house IN ('No', 'Yes')),
       has_authorization VARCHAR(3) CONSTRAINT authorization_bool CHECK (has_authorization IN ('No', 'Yes')),
       purpose VARCHAR(3) CONSTRAINT purpose_boolean CHECK (purpose IN ('Cuido', 'Compañía')),
       interest_in_adoption VARCHAR(50) CONSTRAINT candidate_IIA_nn NOT NULL, -- description of candidate's interest
       accompaniment_average VARCHAR(50) CONSTRAINT candidate_AA_nn NOT NULL,
       minimum_monthly_amount VARCHAR(50) CONSTRAINT candidate_MinMA_nn NOT NULL,
       maximum_monthly_amount VARCHAR(50) CONSTRAINT candidate_MaxMa_nn NOT NULL
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
'Identificador del rescatista';
COMMENT ON COLUMN candidate.id_test
IS
'Identificador del test';
COMMENT ON COLUMN candidate.own_house
IS
'Tiene casa propia';
COMMENT ON COLUMN candidate.has_authorization
IS
'Tiene autorización donde vive para tener la mascota';
COMMENT ON COLUMN candidate.purpose
IS
'Propósito de adoptar la mascota';
COMMENT ON COLUMN candidate.interest_in_adoption
IS
'Interés en adoptar';
COMMENT ON COLUMN candidate.accompaniment_average
IS
'Promedio de tiempo diario que la mascota estaría acompañada.';
COMMENT ON COLUMN candidate.minimum_monthly_amount
IS
'Mínimo de rango de monto mensual que puede asignar para gastos de la mascota';
COMMENT ON COLUMN candidate.maximum_monthly_amount
IS
'Máximo de rango de monto mensual que puede asignar para gastos de la mascota';