--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(
SELECT first_name
FROM actor
)
UNION
(
SELECT first_name
FROM customer
)

--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım
(
SELECT first_name
FROM actor
)
INTERSECT
(
SELECT first_name
FROM customer
)

--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan 
--ancak ikinci tabloda bulunmayan verileri sıralayalım.
SELECT actor.first_name
FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name
WHERE customer.first_name IS NULL;

--İlk 3 sorguyu tekrarlayan veriler için normaldir.
(SELECT first_name FROM customer)
UNION ALL
(SELECT first_name FROM actor);

SELECT first_name FROM customer
INTERSECT ALL
SELECT first_name FROM actor

SELECT first_name FROM customer
EXCEPT ALL
SELECT first_name FROM actor