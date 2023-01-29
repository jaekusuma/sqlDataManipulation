# sqlDataManipulation

you can access the screenshot [here](https://github.com/jaekusuma/sqlDataManipulation/tree/main/screenshot)

and [here](https://github.com/jaekusuma/sqlDataManipulation/tree/main/sqlQueryAndData) is query script and data for database im using for.

below is the task, answer and screenshot result :

## 1a insert 5 operators to operator table
```
insert into operator (nama) values
('Telkomsel'), ('Indosat'), ('Tri'), ('XL'), ('Axis');
select * from operator;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1a.JPG)

## 1b insert 3 product type
```
ert into product_type(nama) values
('Pulsa'), ('Paket Data'), ('Paekt Kombo');
select * from product_type;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1b.JPG)

## 1c insert 2 product with product type id = 1 and operator id = 3
```
insert into product (nama,price,product_type_id,operator_id) values 
('Pulsa 5000','5500',1,3), ('Pulsa 10000','10500',1,3);
select * from product;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1c.JPG)

## 1d insert 3 product with product type id = 2 and operator id = 1
```
insert into product (nama,price,product_type_id,operator_id) values 
('Paket data 6gb','60000',2,1), ('Paket data 8gb','80000',2,1), ('Paket data 10gb','100000',2,1);
select * from product;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1d.JPG)

## 1e insert 3 product with product type id = 3 and operator id = 4
```
insert into product (nama,price,product_type_id,operator_id) values 
('Ngoceh 10 menit','10000',3,4), ('Ngoceh 20 menit','20000',3,4), ('Ngoceh 30 menit','30000',3,4);
select * from product;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1e.JPG)

## 1f insert product description to all product
```
insert into product_description (description,product_id) 
values 
    ('Pulsa dengan harga 5500',1),
    ('Pulsa dengan harga 10500',2),
    ('Paket data all internet sebesar 6 gb dengan harga 60000',3),
    ('Paket data all internet sebesar 8 gb dengan harga 80000',4),
    ('Paket data all internet sebesar 10 gb dengan harga 100000',5),
    ('Paket telefon selama 10 menit ke semua operator dengan harga 10000',6),
    ('Paket telefon selama 20 menit ke semua operator dengan harga 20000',7),
    ('Paket telefon dengan 30 menit ke semua operator harga 30000',8);
select * from product_description;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1f.JPG)

## 1g insert 3 payment method
```
insert into payment_method (nama) values
	('VA'), ('Transfer bank'), ('Paylatter');
select * from payment_method;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1g.JPG)

## 1h insert 5 user to user table
```
insert into user (nama,gender)
values
	('Indah','PEREMPUAN'),
    ('Jaelani','LAKI_LAKI'),
    ('Dinda','PEREMPUAN'),
    ('Sanusi','LAKI_LAKI'),
    ('Mayang','PEREMPUAN');
select * from user;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1h.JPG)

## 1i insert 3 transaction to each user
```
insert into transaction (user_id,payment_method_id,status) values
	(1,1,'PENDING'),
    (1,2,'SUCCESS'),
    (1,3,'FAILED'),
    (2,2,'SUCCESS'),
    (2,1,'SUCCESS'),
    (2,3,'SUCCESS'),
    (3,3,'FAILED'),
    (3,1,'SUCCESS'),
    (3,2,'SUCCESS'),
    (4,2,'SUCCESS'),
    (5,3,'PENDING');
select * from transaction;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1i.JPG)

## 1j insert 3 product to each transaction
```
insert into transaction_detail (product_id,qty,price,transaction_id) values
	(1,1,20000,1),
    (2,2,80000,3),
    (3,2,11000,3),
    (1,3,60000,2),
    (2,2,80000,2),
    (3,1,5500,2),
    (3,4,22000,1),
    (2,2,80000,1),
    (1,1,20000,3);
select * from transaction_detail;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/1j.JPG)


## 2a Tampilkan nama user / pelanggan dengan gender Laki-laki / M.
```
select id, nama, gender from user u where u.gender = 'LAKI_LAKI';
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/2a.JPG)

## 2b Tampilkan product dengan id = 3.
```
select * from product where id = 3;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/2b.JPG)

## 2c Tampilkan data pelanggan yang created_at dalam range 7 hari kebelakang dan mempunyai nama mengandung kata ‘a’.
```
select * from user where created_at > date_sub(now(),interval 7 day) and nama like '%a%';
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/2c.JPG)

## 2d Hitung jumlah user / pelanggan dengan status gender Perempuan.
```
select count(*) as countOfFemaleGender from user where gender = 'PEREMPUAN';
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/2d.JPG)

## 2e Tampilkan data pelanggan dengan urutan sesuai nama abjad
```
select * from user order by nama asc; 
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/2e.JPG)

## 2f Tampilkan 5 data transaksi dengan product id = 3
```
select * from transaction t where id in (select transaction_id from transaction_detail where product_id = 3) limit 5;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/2f.JPG)

## 3a Ubah data product id 1 dengan nama ‘product dummy’.
```
update product set nama = 'product dummy' where id = 1;
select * from product;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/3a.JPG)

## 3b Update qty = 3 pada transaction detail dengan product id 1.
```
update transaction_detail set qty = 3 where product_id = 1;
select * from transaction_detail;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/3b.JPG)

## 4a Delete data pada tabel product dengan id 1.
```
SET FOREIGN_KEY_CHECKS = 0; -- ignore foreign key
delete from product where id = 1;
SET FOREIGN_KEY_CHECKS = 1; -- enable FK back
select * from product;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/4a.JPG)

## 4b Delete pada tabel product dengan product-type id 1.
```
SET FOREIGN_KEY_CHECKS = 0;
delete from product where product_type_id = 1;
SET FOREIGN_KEY_CHECKS = 1;
select * from product;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/4b.JPG)

## Realese 2
## 1 Gabungkan data transaksi dari user id 1 dan user id 2.
```
select	t.*,u.nama,u.gender from transaction t left join 
user u on u.id = t.user_id where user_id = 1 or 2;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/r21.JPG)

## 2 Tampilkan jumlah harga transaksi user id 1.
```
select sum(price) as total_harga from transaction t inner join 
transaction_detail dt on t.id = dt.transaction_id where user_id = 1;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/r22.JPG)

## 3 Tampilkan total transaksi dengan product type 2.
```
select count(*) as `total transaksi` from transaction_detail td inner join 
product p on td.product_id = p.id where p.product_type_id = 2;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/r23.JPG)

## 4 Tampilkan semua field table product dan field name table product type yang saling berhubungan.
```
select p.*, pt.nama as jenis from product p left join 
product_type pt on p.product_type_id = pt.id;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/r24.JPG)
    
## 5 Tampilkan semua field table transaction, field name table product dan field name table user.
```
select t.*, p.nama as `nama product`, u.* from transaction t left join
user u on u.id = t.user_id left join transaction_detail td on 
td.transaction_id = t.id left join product p on p.id = td.transaction_id;
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/r25.JPG)

## 8 Tampilkan data products yang tidak pernah ada di tabel transaction_details dengan sub-query.
```
select td.product_id as `transaction details`, p.* from transaction_detail td right join 
product p on td.product_id = p.id where p.id in (select id from product p2 where id !=2);
```
result:

![](https://github.com/jaekusuma/sqlDataManipulation/blob/main/screenshot/r28.JPG)
