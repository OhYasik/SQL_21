CREATE INDEX idx_menu_unique
ON menu (pizzeria_id, pizza_name);
SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
SELECT pizzeria_id, pizza_name
FROM MENU
WHERE pizza_name = 'cheese pizza' AND pizzeria_id = 1;