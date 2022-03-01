/*
Merhabalar,

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
Kolay Gelsin.
*/

/*
country tablosunda bulunan country sütunundaki ülke 
isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
*/
select * from country where country LIKE 'A%a'

/*
country tablosunda bulunan 
country sütunundaki ülke isimlerinden 
en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
*/
select * from country where country LIKE '______%n'

/*
film tablosunda bulunan title sütunundaki 
film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin
'T' karakteri içeren film isimlerini sıralayınız.
*/
select * from film where title ~~* 'T____%n' or title ILIKE 'T____' or title ILIKE '%t%t%t%t%';

/*
tüm sütunlardaki verilerden
title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan 
ve rental_rate 2.99 olan verileri sıralayınız.
*/
select * from film where title LIKE 'C%' and length > 90 and rental_rate = 2.99;
