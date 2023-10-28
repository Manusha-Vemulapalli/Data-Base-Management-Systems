create database assign3;
use assign3;
create table Shops (ShopID    int not null,
Name    varchar(15) not null, 
Address   varchar(30) not null,
PhoneNumber   varchar(10) not null,
Primary key(ShopID));

create table Mechanics (MechanicID int not null,
Firstname  varchar(10)  not null,
Lastname   varchar(10)  not null,
Address  varchar(32) not null,
Email    varchar(10),
Phonenumber  numeric(10),
Birthdate   date not null,
Speciality  varchar(15),
ShopID    int,
Primary key(MechanicID), foreign key(ShopID) references Shops(ShopID)
on delete set null);

create table Customers ( CustomerID  int not null,
Firstname varchar(10) not null,
Lastname  varchar(10) not null,
Address varchar(32) not null,
Email varchar(10),
Phonenumber numeric(10),
primary key(CustomerID));

create table Cars (VIN  varchar(10) not null,
Make varchar(10) not null,
Model varchar(10) not null,
Color varchar(10) not null,
Year varchar(10) not null,
CustomerID int,
Primary Key(VIN), foreign key(CustomerID) references Customer(CustomerID) on delete set null);

create table Services ( ServiceID int not null,
VIN varchar(10) not null,
Description varchar(15) not null,
Parts varchar(10) not null,
Color varchar(10) not null,
Date  date not null,
Time  time not null, primary key(ServiceID), foreign key(VIN) references Cars(VIN)
on delete set null);

create table Work (ServiceID int, MechanicID int,
primary key(ServiceID,MechanicID), 
foreign key(ServiceID) references Services(ServiceID)  on delete cascade,
foreign key (MechanicID) references Mechanics(MechanicID) on delete cascade);











