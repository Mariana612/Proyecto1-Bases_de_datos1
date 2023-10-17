-------------------------------------------
----------------ADOPTION_FORM---------------
CREATE TABLE adoption_form
(
       id NUMBER(6),                        --PK
       id_candidate NUMBER(6),              --FK
       id_pet NUMBER(6),                    --FK
       id_status NUMBER(6),                 --FK
       id_association NUMBER(6),            --FK
       id_rescuer NUMBER(6),                --FK
       form_name VARCHAR(30) CONSTRAINT adoptionForm_name_nn NOT NULL,
       
       
       own_house VARCHAR(3) CONSTRAINT own_house_bool CHECK (own_house IN ('No', 'Yes')),
       has_authorization VARCHAR(3) CONSTRAINT authorization_bool CHECK (has_authorization IN ('No', 'Yes')),
       purpose VARCHAR2(10 BYTE) CONSTRAINT purpose_boolean CHECK (purpose IN ('Cuido', 'Compañía')),
       interest_in_adoption VARCHAR(50) CONSTRAINT candidate_IIA_nn NOT NULL, -- description of candidate's interest
       accompaniment_average VARCHAR(50) CONSTRAINT candidate_AA_nn NOT NULL,
       minimum_monthly_amount VARCHAR(50) CONSTRAINT candidate_MinMA_nn NOT NULL,
       maximum_monthly_amount VARCHAR(50) CONSTRAINT candidate_MaxMa_nn NOT NULL
);

--alters--
--PK
ALTER TABLE adoption_form
ADD 
CONSTRAINT pk_AF PRIMARY KEY (id)
USING INDEX
TABLESPACE Proyecto1_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

--FK
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idCandidate
FOREIGN KEY (id_candidate) REFERENCES candidate(id_physical);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idPet
FOREIGN KEY (id_pet) REFERENCES pet(id);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idStatus
FOREIGN KEY (id_status) REFERENCES status(id);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idAsso
FOREIGN KEY (id_association) REFERENCES association(id_legal);
--
ALTER TABLE adoption_form
ADD CONSTRAINT FK_AF_idRescuer
FOREIGN KEY (id_rescuer) REFERENCES rescuer(id_physical);

--comments--
COMMENT ON TABLE adoption_form
IS
'Repositorio para almacenar información de formularios de adopción ';
COMMENT ON COLUMN adoption_form.id
IS
'Identificador del formulario de adopción';
COMMENT ON COLUMN adoption_form.id_candidate
IS
'Identificador del candidato que realiza el formulario';

COMMENT ON COLUMN adoption_form.id_pet
IS
'Identificador de la mascota que se quiere adoptar';
COMMENT ON COLUMN adoption_form.id_status
IS
'Identificador del estado del formulario';
COMMENT ON COLUMN adoption_form.id_association
IS
'Identificador de la asociación que aprueba el formulario';
COMMENT ON COLUMN adoption_form.id_rescuer
IS
'Identificador del rescatista que aprueba el formulario';
COMMENT ON COLUMN adoption_form.form_name
IS
'Nombre del formulario';




