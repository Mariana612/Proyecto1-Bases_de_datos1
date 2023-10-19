VARIABLE petTypesCursor REFCURSOR;

BEGIN
  :petTypesCursor := petProcedures.getallpetcolors;
END;
/

PRINT petTypesCursor;
