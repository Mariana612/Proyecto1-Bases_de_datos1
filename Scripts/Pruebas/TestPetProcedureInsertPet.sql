SET SERVEROUTPUT ON
DECLARE
    -- Variables para los parámetros de entrada
    pcName VARCHAR2(100) := 'Zeus';  
    pcPetStatus VARCHAR2(100) := 'RESCUED';  
    pcPetType VARCHAR2(100) := 'Dog';  
    pcColor VARCHAR2(100) := 'Brown';  
    pcBreed VARCHAR2(100) := 'Labrador Retriever';  
    pnChip NUMBER := null;
    vResultMessage VARCHAR2(200);
BEGIN
    -- Llama al procedimiento insertPET
    petProcedures.insertPET(pcName, pcPetStatus, pcPetType, pcColor, pcBreed, pnChip,vResultMessage);
    DBMS_OUTPUT.PUT_LINE(vResultMessage);
END;
/


