/*
film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
*/
select AVG(rental_rate) from  film;
/*
film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
*/
select COUNT(*) from  film where title LIKE 'C%'; -> 92

/*
film tablosunda bulunan filmlerden 
rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
*/
select MAX(rental_rate) from  film; -> 4.99

/*
film tablosunda bulunan filmlerin 
uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
*/
select Count(replacement_cost) from  film where length > 150;
