--city tablosu ile country tablosunda bulunan şehir (city) ve 
--ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT city.city,city.city_id ,country.country_id,country.country
FROM city
INNER JOIN country
ON city.country_id = country.country_id;


--customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT customer.first_name, customer.last_name,customer.customer_id,payment.payment_id
FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id;

--customer tablosu ile rental tablosunda bulunan rental_id ile customer 
--tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT customer.first_name, customer.last_name, customer.customer_id, rental.rental_id
FROM customer
INNER JOIN rental
ON rental.customer_id = customer.customer_id;














