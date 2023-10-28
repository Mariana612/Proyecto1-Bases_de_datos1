SET SERVEROUTPUT ON
DECLARE
    Result VARCHAR2(32767);
BEGIN
    -- Llama al procedimiento insertPET
    Result := updatePetPackage.updatePetChip(2, 2555);
END;
/