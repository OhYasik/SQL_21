WITH cte_missing_dates(missing_date)
AS (
    (SELECT days::DATE AS missing_date
FROM generate_series ('2022-01-01', '2022-01-10', interval '1 day') AS days
    )
),
	cte_certain_visits
AS (
      (SELECT *
    FROM person_visits WHERE person_id = 1 OR person_id = 2
    AND visit_date BETWEEN '2022-01-01' AND '2022-01-10')
)
    SELECT missing_date FROM cte_missing_dates
FULL JOIN
     cte_certain_visits
ON missing_date = cte_certain_visits.visit_date
WHERE cte_certain_visits.person_id is NULL
ORDER BY missing_date