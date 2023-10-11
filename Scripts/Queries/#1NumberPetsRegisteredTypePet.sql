-- Cantidad de mascotas en adopción por tipo de mascota.
-- Creación de una vista que muestra la cantidad de mascotas en adopción por tipo de mascota.

CREATE VIEW vista_mascotas_en_adopcion AS
SELECT
    pet_type.type_name AS Pet_Type, -- Selecciona el tipo de mascota.
    COUNT(1) AS Number_Of_Registers -- Cuenta 1 cuando la mascota es rescatada.
FROM
    rescued
JOIN
    pet ON rescued.id_pet = pet.id -- Busca donde el id de la mascota que fue rescatada tenga el mismo id en la tabla pet.
JOIN
    pet_type ON pet.id_pet_type = pet_type.id  -- Busca donde el id del tipo de mascota en la tabla pet tenga el mismo id en la tabla pet_type.
GROUP BY
    pet_type.type_name; -- Agrupa por el tipo de mascota la cantidad de registros de adopción.