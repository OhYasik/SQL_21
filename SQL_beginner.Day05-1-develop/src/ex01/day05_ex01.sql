SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
SELECT pizza_name, pizzeria.name AS pizzeria_name
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id