SET SERVEROUTPUT ON
DECLARE
    Result VARCHAR2(32767);
BEGIN
    -- Llama al procedimiento insertPET
    Result := updatePetPackage.updatePetName(2, 'Juanitito');
END;
/
