--Cantidad de mascotas en adopción por tipo de mascota.
SELECT pet_type.type_name AS Pet_Type, COUNT(1) AS Number_Of_Registers--se selecciona el tipo de la mascota, se cuenta 1 cuando la mascota es rescatada
FROM rescued 
JOIN pet ON rescued.id_pet = pet.id --se busca donde el id de la mascota que fue rescada tenga el mismo id en la tabla pet
JOIN pet_type ON pet.id_pet_type = pet_type.id  --se busca donde el id del tipo de mascota en la tabla pet tenga el mismo id en la tabla pet_type
GROUP BY pet_type.type_name; --se agrupa por el tipo de mascota la cantidad de registros de adopción
