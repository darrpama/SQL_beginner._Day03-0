INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT new,
       person.id,
       (SELECT menu.id FROM menu WHERE pizza_name = 'greek pizza'),
       '2022-02-25'
FROM generate_series((SELECT (MAX(id) + 1) FROM person_order),
                     (SELECT MAX(id) + 1 FROM person) + (SELECT (MAX(id)) FROM person_order)) AS new
                      JOIN person ON person.id + (SELECT (MAX(id) + 1) FROM person_order) = new;
