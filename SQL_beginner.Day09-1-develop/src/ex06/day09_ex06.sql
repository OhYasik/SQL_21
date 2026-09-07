CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR = 'Dmitriy',
    pprice INTEGER = 500,
    pdate DATE = '2022-01-08'
)
RETURNS TABLE (pizzeria_name VARCHAR) AS $$
SELECT DISTINCT piz.name FROM person_visits pv
JOIN pizzeria piz ON pv.pizzeria_id = piz.id
JOIN menu m ON pv.pizzeria_id = m.pizzeria_id
JOIN person p ON pv.person_id = p.id
WHERE p.name = pperson AND m.price < pprice AND pv.visit_date = pdate
$$ LANGUAGE sql

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');


