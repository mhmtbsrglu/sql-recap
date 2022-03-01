/*
Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.



film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.




Kolay Gelsin.
*/
/*
film tablosunda film uzunluğu 
length sütununda gösterilmektedir. 
Uzunluğu ortalama film uzunluğundan 
fazla kaç tane film vardır?
*/

SELECT * from film where length > ANY 
(SELECT AVG(length) from film);

/*
film tablosunda en yüksek 
rental_rate değerine sahip kaç tane film vardır?
*/

SELECT count(rental_rate) as en_yuksek_film_sayisi from film where rental_rate =
(select MAX(rental_rate) from film);

/*
film tablosunda en düşük rental_rate 
ve en düşün replacement_cost değerlerine 
sahip filmleri sıralayınız.
*/

SELECT rental_rate,replacement_cost,title from film where
rental_rate = (Select MIN(rental_rate) from film) and
replacement_cost = (Select MIN(replacement_cost) from film)

/*
payment tablosunda en fazla 
sayıda alışveriş yapan 
müşterileri(customer) sıralayınız.
*/

SELECT payment_id,c.customer_id from payment p
inner join customer c on p.customer_id = c.customer_id
where p.amount = (SELECT MAX(amount) from payment)
