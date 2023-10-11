/*--Anteriormente no teníamos esta columna en la tabla physical_person, y va a ser necesaria para este querie
ALTER TABLE physical_person
ADD birth_date DATE CONSTRAINT nn_birth_date NOT NULL;
--Esto se tuvo que alterar ya que causaba un error a la hora de ingresar datos en la tabla candidato 
ALTER TABLE candidate
MODIFY purpose VARCHAR2(10 BYTE);*/

/*Consulta: Total de adoptantes por rango de edad. De 0 a 18, de 19 a 30, de 31 a 45, de 46 a 60, de 61 a 
75 y mayor de 75 por género y con filtro género*/

-- Selecciona el género y suma los adoptantes en cada rango de edad.
-- Crea una vista llamada "vista_adoptantes" que contiene información sobre la adopción por género y rango de edad.
CREATE VIEW vista_adoptantes AS
SELECT
    CASE
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 18 THEN '0-18'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 30 THEN '19-30'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 45 THEN '31-45'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 60 THEN '46-60'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 75 THEN '61-75'
        ELSE '75+'
    END AS rango_edad,
    CASE
        WHEN gen.name_gender = 'Masculino' THEN 'Masculino'
        WHEN gen.name_gender = 'Femenino' THEN 'Femenino'
        ELSE 'Otro'
    END AS genero,
    COUNT(*) AS cantidad_adoptantes
FROM
    adoption_form af
INNER JOIN
    candidate c ON af.id_candidate = c.id_physical
INNER JOIN
    physical_person pp ON c.id_physical = pp.id_physical
INNER JOIN
    gender gen ON pp.id_gender = gen.id
INNER JOIN
    status s ON af.id_status = s.id
WHERE
    s.status_name = 'APPROVED'
GROUP BY
    CASE
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 18 THEN '0-18'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 30 THEN '19-30'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 45 THEN '31-45'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 60 THEN '46-60'
        WHEN FLOOR(MONTHS_BETWEEN(SYSDATE, pp.birth_date) / 12) <= 75 THEN '61-75'
        ELSE '75+'
    END,
    CASE
        WHEN gen.name_gender = 'Masculino' THEN 'Masculino'
        WHEN gen.name_gender = 'Femenino' THEN 'Femenino'
        ELSE 'Otro'
    END
ORDER BY
    genero;

