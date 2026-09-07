SELECT name, rating
FROM 
  (SELECT name, rating, person_id
  FROM person_visits
  RIGHT JOIN pizzeria ON pizzeria.id=person_visits.pizzeria_id) AS pizza
  WHERE person_id IS NULL