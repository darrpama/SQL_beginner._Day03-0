SELECT pizza_name, price, p.name AS pizzeria_name FROM menu
JOIN pizzeria p on p.id = menu.pizzeria_id
LEFT JOIN person_order po on menu.id = po.menu_id
WHERE person_id IS NULL
ORDER BY pizza_name, price;