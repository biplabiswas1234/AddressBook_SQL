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



