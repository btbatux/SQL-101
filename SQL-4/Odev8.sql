--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), 
--name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım. (www.mockaroo.com/ data eklensin.)
CREATE TABLE employee (
id  SERIAL PRIMARY KEY(32),
name VARCHAR(50),
birthday DATE,
email VARCHAR(100)
);



--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim
SELECT * FROM employee

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET birthday = '1998-08-08'
WHERE email = 'tphelan0@chicagotribune.com'

UPDATE employee
SET name = 'Jane Smith'
WHERE email = 'jsmith@example.com';

UPDATE employee
SET email = 'asmith@example.com'
WHERE name = 'Alice Smith';

UPDATE employee
SET birthday = '1985-07-20'
WHERE name = 'John Doe';

UPDATE employee
SET id = 100
WHERE name = 'Jane Doe';


--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım
DELETE FROM employee
WHERE name = 'John Doe';

DELETE FROM employee
WHERE email = 'asmith@example.com';

DELETE FROM employee
WHERE birthday = '1985-07-20';

DELETE FROM employee
WHERE id = 100;

DELETE FROM employee
ORDER BY id
LIMIT 5;















