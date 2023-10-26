
delete from rescuerxpet;
delete from lost_pet;
delete from found_pet;
delete from rescuedxillness;
delete from photo_after;
delete from photo_before;
delete from rescued;
delete from pet;

delete from breed;
delete from pet_status;
delete from pet_type;
delete from color;
delete from currency;
delete from energy;
delete from illness;
delete from severity;
delete from training;
delete from treatment;

--INSERTS PET STATUS
INSERT INTO pet_status(id,status_name) VALUES(sPetStatus.NEXTVAL, 'Lost');
INSERT INTO pet_status(id,status_name) VALUES(sPetStatus.NEXTVAL, 'Found');
INSERT INTO pet_status(id,status_name) VALUES(sPetStatus.NEXTVAL, 'Adopted');
INSERT INTO pet_status(id,status_name) VALUES(sPetStatus.NEXTVAL, 'Rescued');

--INSERTS PET TYPE
INSERT INTO pet_type(id, type_name) VALUES(sPetType.NEXTVAL, 'Dog');
INSERT INTO pet_type(id, type_name) VALUES(sPetType.NEXTVAL, 'Cat');

--INSERTS BREEDS OF DOGS
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Labrador Retriever', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'German Shepherd', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Golden Retriever', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'French Bulldog', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Poodle', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Boxer', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Siberian Husky', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Dachshund', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Bulldog', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Beagle', petProcedures.getTypeId('Dog'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Rottweiler', petProcedures.getTypeId('Dog'));

--INSERTS BREEDS OF CATS
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Siamese', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Persian', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Maine Coon', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Ragdoll', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Bengal', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Scottish Fold', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Sphynx', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'British Shorthair', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Abyssinian', petProcedures.getTypeId('Cat'));
INSERT INTO breed(id, breed_name, id_pet_type) VALUES(sBreed.NEXTVAL, 'Russian Blue', petProcedures.getTypeId('Cat'));

--INSERTS COLORS OF PETS
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Brown');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'White');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Black and White');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Gray');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Golden');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Black and Brown');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Brindle');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Red');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Silver');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Tabby Gray');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Orange');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Blue Gray');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'White and Gray');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Solid Black');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Solid White');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Black and Orange');
INSERT INTO color(id, color_name) VALUES(scolor.nextval, 'Black');
--ENERGY
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'Athletic');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'Runner');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'Walker');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'To see TV');
INSERT INTO energy(id, energy_description)VALUES(sEnergy.NEXTVAL,'It is not important');

--TRAINING
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Very challenging');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Challenging');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Moderate');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Easy');
INSERT INTO training(id, training_description)VALUES(sTraining.NEXTVAL,'Variable');

--ILLNESS
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

--SEVERITY
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Serious');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Stable');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Critical Care');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Fair condition');
INSERT INTO severity (id, severity_description) VALUES (sSeverity.NEXTVAL, 'Guarded');

--CURRENCY
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Dollars');
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Euros');
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Costa Rican Colón');
INSERT INTO currency(id, currency_name) VALUES(sCurrency.NEXTVAL, 'Mexican Peso');
