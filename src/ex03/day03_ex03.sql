(SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person_visits.person_id = person.id AND person.gender = 'female'
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
EXCEPT ALL
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person_visits.person_id = person.id AND person.gender = 'male'
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id)

UNION ALL

(SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person_visits.person_id = person.id AND person.gender = 'male'
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
EXCEPT ALL
SELECT pizzeria.name AS pizzeria_name FROM person
JOIN person_visits ON person_visits.person_id = person.id AND person.gender = 'female'
JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id)
ORDER BY pizzeria_name;