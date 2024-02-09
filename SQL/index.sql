CREATE  DATABASE Anjuka;
USE Anjuka;
show tables;
create table Anjuka_usr_tbl(user_id int not null primary key auto_increment,
First_name varchar(255) not null,
Last_name varchar(255) not null,
User_name varchar(255) not null unique,
Password varchar(255),
Created_by varchar(255),
Modified_by varchar(255),
Created_on date,
Modifies_on date);

alter table ofs_usr_tbl rename ofs_usr_reg;

insert into ofs_usr_reg(user_id,First_name,Last_name,User_Name,Password,
created_by,modified_ny,created_on,modified_on)
values((1001,'Aarif','S','username@01','Password@123','Anjuka','null','2023_12_12','null'),					
(1002,'Abdul rahman','A','username@02','Password@123','Anjuka','null','2023-12-12','null'),					
(1003,'Abinaya','J','username@03','Password@123','Anjuka','null','2023-12-12','null'),					
(1004,'Ahamed',' J','username@04','Password@123','Anjuka','null','2023-12-12','null'),					
(1005,'ALEXANDAR',' A ','username@05','Password@123','Anjuka','null','2023-12-12','null'),					
(1006,'Anand',' R','username@06','Password@123','Anjuka','null','2023-12-12','null'),					
(1007,'Anjuka',' P','username@07','Password@123','Anjuka','null','2023-12-12','null'),					
(1008,'Aravind','K','username@08','Password@123','Anjuka','null','2023-12-12','null'),					
(1009,'Basheer Ahamed',' M','username@09','Password@123','Anjuka','null','2023-12-12','null'),					
(1010,'Chandran ','P','username@10','Password@123','Anjuka','null','2023-12-12','null'),					
(1011,'Danielraj',' A','username@11','Password@123','Anjuka','null','2023-12-12','null'),					
(1012,'Dinesh ','T','username@12','Password@123','Anjuka','null','2023-12-12','null'),					
(1013,'Domenig Vasanthan',' A','username@13','Password@123','Anjuka','null','2023-12-12','null'),					
(1014,'Gopal',' S','username@14','Password@123','Anjuka','null','2023-12-12','null'),					
(1015,'HARSH',' A','username@15','Password@123','Anjuka','null','2023-12-12','null'),					
(1016,'Jayapravin ','D','username@16','Password@123','Anjuka','null','2023-12-12','null'),					
(1017,'jemimah ','j','username@17','Password@123','Anjuka','null','2023-12-12','null'),					
(1018,'Manimohana','S','username@18','Password@123','Anjuka','null','2023-12-12','null'),					
(1019,'Kiruthiga','R','username@19','Password@123','Anjuka','null','2023-12-12','null'),					
(1020,'Nancy','A','username@20','Password@123','Anjuka','null','-122023-12','null'),					
(1021,'Natrayan','M','username@21','Password@123','Anjuka','null','2024-12-12','null'),					
(1022,'Pavithra','K','username@22','Password@123','Anjuka','null','2024-01-02','null'),					
(1023,'prabhaharn','M','username@23','Password@123','Anjuka','null','2024-01-03','null'),					
(1024,'RAMKI','S','username@24','Password@123','Anjuka','null','2024-01-04','null'),					
(1025,'Sahith Afridi','S','username@30','Password@123','Anjuka','null','2024-01-05','null'),					
(1026,'sakthivel','S','username@26','Password@123','Anjuka','null','2024-01-06','null'),					
(1027,'Sanjay','B','username@27','Password@123','Anjuka','null','2024-01-07','null'),					
(1028,'Santhosh Kumar','S','username@28','Password@123','Anjuka','null','2024-01-08','null'),					
(1029,'Saran','S','username@29','Password@123','Anjuka','null','2024-01-09','null'),				
(1030,'Siranjeevi','S','username@29','Password@123','Anjuka','null','2024-01-09','null'));					




DELIMITER \\
create procedure anju()
begin
select*from ofs_usr_reg;
end\\

call anju();


Create table ofs_usr_login(login_id int not null primary key,
user_name varchar(255) not null unique,
Password varchar(255),
New_Password varchar(255),
user_id int not null,
foreign key (user_id) references ofs_usr_reg(user_id),
created_by varchar(255),
modified_by varchar(255),
created_on date,
modified_on date);

DELIMITER \\
create procedure akil()
begin
select*from ofs_usr_login;
end\\

call akil();

create table ofs_usr_order(order_id int not null,
product_Name varchar(255),
price double,
order_by varchar(255),
Order_on date,
delivered_by varchar(255),
delivered_on date,
cancel_order varchar(255),
ship_address varchar(255),
user_id int not null,
foreign key (user_id) references ofs_usr_reg (user_id));

DELIMITER \\
create procedure abi()
begin
select*from ofs_usr_order;
end\\

call abi;

create table ofs_usr_prm(prm_id int not null primary key,
product_name varchar(255),
quantity varchar(255),
quality varchar(255),
user_id int not null,
foreign key (user_id) references ofs_usr_reg (user_id));
pesticides
fertilizers
seeds
machinary


Delimiter $$
create procedure PRM()
begin
select * from ofs_usr_prm;
end $$

call PRM();

create table ofs_usr_uint(uint_id int not null primary key,
product_name varchar(255),
product_type varchar(255),
quantity varchar(255),
quality varchar(255),
price double,
Reviews varchar(255));

Delimiter $$
create procedure AK()
begin
select * from ofs_usr_unit;
end $$

call AK();




use cad_ofs;

delimiter$$
drop procedure if exists insertdata;$$
create procedure insertdata(in user_idp int ,
in  First_namep varchar(255) ,
in Last_namep varchar(255) ,
in User_namep varchar(255) ,
in Passwordp varchar(255) ,
in Created_byp varchar(255) ,
in Modified_byp varchar(255) ,
in Created_onp date ,
in Modified_onp date
)
begin 
insert into ofs_usr_reg(user_id,First_name,Last_Name,User_Name,Password,Created_by,modified_by,created_on,modified_on)
 values( user_idp, First_namep,Last_namep,User_namep,Passwordp,Created_byp,Modified_byp,Created_onp,Modified_onp);
end $$
delimiter ;
call insertdata(1001,'Ahmed','H','Ahemed hussain','Password@123','Anjuka',null,2023-12-21,null);




