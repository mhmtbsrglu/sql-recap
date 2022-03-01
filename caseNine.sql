/*
city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) 
isimlerini birlikte görebileceğimiz I
NNER JOIN sorgusunu yazınız.
*/

select * from city INNER JOIN country ON city.city_id = country.country_id;

/*
customer tablosu ile payment tablosunda bulunan payment_id 
ile customer tablosundaki first_name ve
last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

*/

SELECT  payment_id ,first_name,last_name
FROM customer
INNER JOIN payment
ON customer.payment_id = payment.payment_id ;

/*
customer tablosu ile rental tablosunda bulunan rental_id ile customer 
tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
*/

select first_name,last_name from rental INNER JOIN customer ON customer.customer_id = rental.customer_id;
