CREATE SEQUENCE sEnergy
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'Athletic');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'Runner');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'Walker');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'To see TV');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'It is not important');

CREATE SEQUENCE sTraining
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Very challenging');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Challenging');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Moderate');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Easy');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Variable');

CREATE SEQUENCE sIllness
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;

INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Kennel Cough');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Flea Infestation');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Ear Infection');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Arthritis');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Lyme Disease');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Upper Respiratory Infection');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Urinary Tract Infection');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Kidney Disease');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Diabetes');
INSERT INTO illness (id, illness_description) VALUES (sIllness.NEXTVAL, 'Hyperthyroidism');

CREATE SEQUENCE sTreatment
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
-- Treatments for Kennel Cough
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Antibiotics', petProcedures.getIllnessId('Kennel Cough'));
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Cough Suppressant', petProcedures.getIllnessId('Kennel Cough'));
-- Treatments for Flea Infestation
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Flea Medication', petProcedures.getIllnessId('Flea Infestation'));
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Cleaning and Vacuuming', petProcedures.getIllnessId('Flea Infestation'));
-- Treatments for Ear Infection
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Ear Drops', petProcedures.getIllnessId('Ear Infection'));
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Antibiotics', petProcedures.getIllnessId('Ear Infection'));
-- Treatments for Arthritis
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Anti-Inflammatory Medication', petProcedures.getIllnessId('Arthritis'));
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Joint Supplements', petProcedures.getIllnessId('Arthritis'));
-- Treatments for Lyme Disease
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Antibiotics', petProcedures.getIllnessId('Lyme Disease'));
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Pain Medication', petProcedures.getIllnessId('Lyme Disease'));
-- Treatment for Upper Respiratory Infection
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Antibiotics', petProcedures.getIllnessId('Upper Respiratory Infection'));
-- Treatment for Urinary Tract Infection
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Antibiotics', petProcedures.getIllnessId('Urinary Tract Infection'));
-- Treatment for Kidney Disease
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Renal Diet', petProcedures.getIllnessId('Kidney Disease'));
-- Treatment for Diabetes
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Insulin Injections', petProcedures.getIllnessId('Diabetes'));
-- Treatment for Hyperthyroidism
INSERT INTO treatment (id, treatment_description, id_illness) VALUES (sTreatment.NEXTVAL, 'Anti-Thyroid Medication', petProcedures.getIllnessId('Hyperthyroidism'));

CREATE SEQUENCE sSeverity
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;

INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Serious');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Stable');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Critical Care');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Fair condition');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Guarded');

CREATE SEQUENCE sCurrency
  START WITH 000001
  INCREMENT BY 1
  MINVALUE 000001
  MAXVALUE 999999
  NOCACHE
  CYCLE;
  
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Dollars');
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Euros');
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Costa Rican Colón');
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Mexican Peso');

