WITH foo AS (SELECT * FROM menu JOIN pizzeria ON menu.pizzeria_id = pizzeria.id)

SELECT menu.pizza_name, pizzeria.name AS pizzeria_name_1, foo.name AS pizzeria_name_2, menu.price
FROM menu JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
JOIN foo ON menu.pizza_name = foo.pizza_name
WHERE menu.price = foo.price AND menu.pizza_name = foo.pizza_name AND pizzeria.name < foo.name
ORDER BY pizza_name;