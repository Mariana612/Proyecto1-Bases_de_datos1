SELECT p.id, p.chip, p.pet_name, 
       ps.status_name, pt.type_name, c.color_name, b.breed_name, 
       rp.amount_spent, rp.date_in 
FROM pet p 
INNER JOIN rescuerxpet rp ON p.id = rp.id_pet
INNER JOIN pet_status ps ON p.id_pet_status = ps.id
INNER JOIN pet_type pt ON p.id_pet_type = pt.id
LEFT JOIN color c ON p.id_color = c.id
LEFT JOIN breed b ON p.id_breed = b.id
WHERE rp.id_rescuer = 7;

