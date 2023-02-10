(SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id AND person.gender = 'female'
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
EXCEPT
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id AND person.gender = 'male'
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id)

UNION

(SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id AND person.gender = 'male'
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
EXCEPT
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_order ON person_order.person_id = person.id AND person.gender = 'female'
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id);