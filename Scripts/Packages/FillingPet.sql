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