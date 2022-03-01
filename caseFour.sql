Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
Kolay Gelsin.

/*
replacement_cost birbİRİNDEN farklı dataları sırala
*/
select DISTINCT replacement_cost  from film;

select COUNT (DISTINCT replacement_cost)  from film; -> 21 FARKLI SAYI

/**
film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
*/

select COUNT (DISTINCT title) from film where title LIKE '%T' and title = 'G'

/*
country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
*/

select COUNT(country) from country where country like '_____'

/*
city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
*/
select Count(country) from country where country ILIKE '%r'
