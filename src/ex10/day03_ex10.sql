INSERT INTO person_order
VALUES (
           (SELECT (MAX(id) + 1) FROM person_order),
           (SELECT id FROM person WHERE name = 'Denis'),
           (SELECT id FROM menu WHERE pizzeria_id = 2 AND pizza_name = 'sicilian pizza'),
           '2022-02-24');

INSERT INTO person_order
VALUES (
           (SELECT (MAX(id) + 1) FROM person_order),
           (SELECT id FROM person WHERE name = 'Irina'),
           (SELECT id FROM menu WHERE pizzeria_id = 2 AND pizza_name = 'sicilian pizza'),
           '2022-02-24');
