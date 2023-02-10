SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN person_visits pv on pizzeria.id = pv.pizzeria_id
WHERE price BETWEEN 800 AND 1000 AND person_id = 3
ORDER BY pizza_name, price, pizzeria_name;