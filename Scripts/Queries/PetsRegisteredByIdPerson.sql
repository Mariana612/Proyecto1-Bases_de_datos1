SELECT p.id, p.chip, p.pet_name FROM pet p 
INNER JOIN rescuerxpet rp ON p.id = rp.id_pet 
WHERE rp.id_rescuer = 7;