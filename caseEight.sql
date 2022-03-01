CREATE TABLE employee(
       id INTEGER ,
       name VARCHAR(50) ,
       birthday DATE ,
       email VARCHAR(100)
      );


/*
Oluşturduğumuz employee tablosuna 
'Mockaroo' servisini kullanarak 
50 adet veri ekleyelim.
*/

insert into employee (id, name, email, birthday) values (1, 'Adrianne', 'aohaire0@goo.gl', '2011-05-04');
...


/*
Sütunların her birine göre diğer 
sütunları güncelleyecek 5 adet 
UPDATE işlemi yapalım.
*/
 UPDATE employee
 SET name='etipuf',
     email='etipuf@eti.com'
  WHERE id  BETWEEN 1 AND 5;
  
  
 /*
 Sütunların her birine göre ilgili satırı 
 silecek 5 adet 
 DELETE işlemi yapalım.
 */
  DELETE FROM employee WHERE id  BETWEEN 1 AND 5;
