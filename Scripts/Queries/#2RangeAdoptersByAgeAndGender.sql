--Anteriormente no teníamos esta columna en la tabla physical_person, y va a ser necesaria para este querie
ALTER TABLE physical_person
ADD birth_date DATE CONSTRAINT nn_birth_date NOT NULL;
--Esto se tuvo que alterar ya que causaba un error a la hora de ingresar datos en la tabla candidato 
ALTER TABLE candidate
MODIFY purpose VARCHAR2(10 BYTE);

/*Consulta: Total de adoptantes por rango de edad. De 0 a 18, de 19 a 30, de 31 a 45, de 46 a 60, de 61 a 
75 y mayor de 75 por género y con filtro género*/

-- Selecciona el género y suma los adoptantes en cada rango de edad.
SELECT
    genero, -- Selecciona el género

    -- Utiliza SUM() con CASE para calcular el total de adoptantes en cada rango de edad.
    SUM(CASE WHEN rango_edad = '0-18' THEN total_adoptantes ELSE 0 END) AS "0-18",
    SUM(CASE WHEN rango_edad = '19-30' THEN total_adoptantes ELSE 0 END) AS "19-30",
    SUM(CASE WHEN rango_edad = '31-45' THEN total_adoptantes ELSE 0 END) AS "31-45",
    SUM(CASE WHEN rango_edad = '46-60' THEN total_adoptantes ELSE 0 END) AS "46-60",
    SUM(CASE WHEN rango_edad = '61-75' THEN total_adoptantes ELSE 0 END) AS "61-75",
    SUM(CASE WHEN rango_edad = '75+' THEN total_adoptantes ELSE 0 END) AS "75+"

FROM (
    -- Subconsulta para generar datos con rango de edad y género
    SELECT
        CASE
            WHEN (MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) BETWEEN 0 AND 18 THEN '0-18'
            WHEN (MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) BETWEEN 19 AND 30 THEN '19-30'
            WHEN (MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) BETWEEN 31 AND 45 THEN '31-45'
            WHEN (MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) BETWEEN 46 AND 60 THEN '46-60'
            WHEN (MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) BETWEEN 61 AND 75 THEN '61-75'
            ELSE '75+'
        END AS rango_edad,
        CASE pp.id_gender
            WHEN 1 THEN 'Masculino'
            WHEN 2 THEN 'Femenino'
            ELSE 'Otro'
        END AS genero,
        1 AS total_adoptantes -- Utiliza 1 para contar cada registro

    FROM
        adoption_form af
    INNER JOIN
        candidate c ON af.id_candidate = c.id_physical
    INNER JOIN
        physical_person pp ON c.id_physical = pp.id_physical

    WHERE
        af.id_status = 1 -- Filtra los formularios aprobados
) 

-- Agrupa por género
GROUP BY
    genero

-- Ordena por género
ORDER BY
    genero;





