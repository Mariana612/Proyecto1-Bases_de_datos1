SET SERVEROUTPUT ON
DECLARE
    -- Variables para los parámetros de entrada
    pcName VARCHAR2(40) := 'Maxito';  
    pcPetStatus VARCHAR2(40) := 'Rescued';  
    pcPetType VARCHAR2(40) := 'Dog';  
    pcColor VARCHAR2(40) := 'Brown';  
    pcBreed VARCHAR2(50) := 'Labrador Retriever';  
    pnChip NUMBER := null;
    pnAmountSpent NUMBER := 100;
    pDateIn VARCHAR2(40) := '2001-01-10';
    Result NUMBER;
BEGIN
    -- Llama al procedimiento insertPET
    Result := petProcedures.insertPet(pcName , pcPetStatus , pcPetType , pcColor , pcBreed , pnChip ,1 , pnAmountSpent , pDateIn );
END;
/
delete from person;
delete from user_person;
Insert Into Person(Id, First_Name, First_Last_Name)
Values(Sperson.Nextval, 'Mariela', 'Solano');
Insert Into physical_person(id_physical,id_gender,birth_date)
Values(1, 2, TO_DATE('2001-01-10', 'YYYY-MM-DD'));
INSERT INTO rescuer(id_physical)
VALUES(1);
Insert Into User_Person(Id, Id_Person, Id_User_Type, Username)
Values(Suser.Nextval, 1, 2, 'mariela');