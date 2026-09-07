INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
	(SELECT MAX(id) + 1 FROM person_visits),
  	(SELECT id FROM person WHERE name = 'Denis'),
  	(SELECT id FROM pizzeria WHERE name = 'Dominos'),
  	'2022-02-24'
);
INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES (
	(SELECT MAX(id) + 1 FROM person_visits),
  	(SELECT id FROM person WHERE name = 'Irina'),
  	(SELECT id FROM pizzeria WHERE name = 'Dominos'),
  	'2022-02-24'
)

-- SELECT * FROM person_visits
-- INNER join person ON person_visits.person_id = person.id
-- WHERE person_visits.visit_date = '2022-02-24'