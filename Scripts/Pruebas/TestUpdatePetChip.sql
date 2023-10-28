SET SERVEROUTPUT ON
DECLARE
    Result VARCHAR2(32767);
BEGIN
    -- Llama al procedimiento insertPET
    Result := updatePetPackage.updatePetAmountSpent(7,2,500);
END;
/