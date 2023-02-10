WITH info AS (
    SELECT pizzeria.name AS pizzeria_name, person_visits.visit_date AS date FROM person
    JOIN person_visits ON person_visits.person_id = person.id AND person_id = 2
    JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
    EXCEPT
    SELECT pizzeria.name AS pizzeria_name, person_order.order_date AS date FROM person
    JOIN person_order ON person_order.person_id = person.id AND person_id = 2
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    )
SELECT info.pizzeria_name
FROM info
ORDER BY pizzeria_name;