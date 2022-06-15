create database AddressBookService
use AddressBookService

create table AddressBook
(
	ID int identity(1,1) primary key,
	FirstName varchar(20) not null,
	LastName varchar(20) not null,
	Address varchar(100) not null,
	City varchar(20) not null,
	State varchar(20) not null,
	Zip bigint not null,
	PhoneNumber bigint not null,
	Email varchar(50) not null
);


insert into AddressBook values('Biplab','Biswas','No 2 Barjhar','Mangaldoi','Assam',784114,9954979057,'biplabiswas1234@gmail.com');
insert into AddressBook values('Bipan','Biswas','No 1 Barjhar','Guwahati','Assam',784114,9954997075,'bbiswas1234@gmail.com');
insert into AddressBook values('Bikash','Biswas','No 2 Barjhar','Tezpur','Assam',784114,9954979087,'bipbiswas1234@gmail.com');
insert into AddressBook values('Billu','Biswas','No 2 Barjhar','Silchar','Assam',784114,9954979098,'biplabiswas@gmail.com');
insert into AddressBook values('Binita','Biswas','No 2 Barjhar','Mangaldoi','Assam',784114,9954979060,'biplab@gmail.com');
select * from AddressBook

update AddressBook set Zip = 784115 where FirstName='Binita';

delete from AddressBook where FirstName ='Billu'

select * from Addressbook where Address='No 1 Barjhar'

select count(ID) from AddressBook where Address='No 2 Barjhar' and State='Assam'

select * from AddressBook where City = 'Mangaldoi' order by FirstName

Alter table AddressBook
Add Name varchar(20), Type varchar(20)
Update AddressBook set Type = 'FriendsBook', Name = 'Friend' where FirstName in ('Binita','Bipan')
Update AddressBook set Type = 'FamilyBook', Name = 'Family' where FirstName in ('Biplab','Bikash')


select count(Type) from AddressBook 
select count(ID) as FamilyContact from AddressBook where Type = 'FamilyBook';