
use cad_ofs;

select * from ofs_usr_reg;
select * from ofs_usr_login;
delete from ofs_usr_login;
delete from ofs_usr_reg;


delimiter $$
drop procedure if exists insertdata;$$
create procedure insertdata(in user_idp int ,
in  First_namep varchar(255) ,
in Last_namep varchar(255) ,
in User_namep varchar(255) ,
in Passwordp varchar(255) ,
in Created_byp varchar(255) ,
in Modified_byp varchar(255) ,
in Created_onp varchar(50) ,
in Modified_onp varchar(50)
)
begin 
insert into ofs_usr_reg(user_id,First_name,Last_Name,User_Name,Password,Created_by,modified_by,created_on,modified_on)
 values( user_idp, First_namep,Last_namep,User_namep,Passwordp,Created_byp,Modified_byp,Created_onp,Modified_onp);
end $$
delimiter ;
call insertdata(1001,'Ahmed','H','Ahemed hussain','Password@123','Anjuka',null,'2023-12-21',null);
call insertdata(1002,'Abdul rahman','A','username@02','Password@123','Anjuka',null,'2023-12-12',null);
call insertdata(1003,'Abinaya','J','username@03','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1004,'Ahamed',' J','username@04','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1005,'ALEXANDAR',' A ','username@05','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1006,'Anand',' R','username@06','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1007,'Anjuka',' P','username@07','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1008,'Aravind','K','username@08','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1009,'Basheer Ahamed',' M','username@09','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1010,'Chandran ','P','username@10','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1011,'Danielraj',' A','username@11','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1012,'Dinesh ','T','username@12','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1013,'Domenig Vasanthan',' A','username@13','Password@123','Anjuka',null,'2023-12-12',null);				
call insertdata(1014,'Gopal',' S','username@14','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1015,'HARSH',' A','username@15','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1016,'Jayapravin ','D','username@16','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1017,'jemimah ','j','username@17','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1018,'Manimohana','S','username@18','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1019,'Kiruthiga','R','username@19','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1020,'Nancy','A','username@20','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1021,'Natrayan','M','username@21','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1022,'Pavithra','K','username@22','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1023,'prabhaharn','M','username@23','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1024,'RAMKI','S','username@24','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1025,'Sahith Afridi','S','username@30','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1026,'sakthivel','S','username@26','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1027,'Sanjay','B','username@27','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1028,'Santhosh Kumar','S','username@28','Password@123','Anjuka',null,'2023-12-12',null);					
call insertdata(1029,'Saran','S','username@29','Password@123','Anjuka',null,'2023-12-12',null);				
call insertdata(1030,'Siranjeevi','S','username@30','Password@123','Anjuka',null,'2023-12-12',null);						

                        
select * from ofs_usr_reg;


delimiter $$
drop procedure if exists insertdata2; $$
create procedure insertdata2 (
in login_idparam int,in
 user_nameparam varchar(255),in
 Passwordparam varchar(255),in
 New_Passwordparam varchar(255),in
 user_idparam int,in
 created_byparam varchar(255),in
 modified_byparam varchar(255),in
 created_onparam varchar(60),in
 modified_onparam varchar(60)
 )
begin 
insert into ofs_usr_login(login_id,user_name,Password,New_Password,user_id,created_by,modified_by,created_on,modified_on)
values(login_idparam,user_nameparam,Passwordparam , New_Passwordparam,user_idparam,created_byparam,modified_byparam,created_onparam,modified_onparam);
end $$
delimiter ;					

call insertdata2(1,'Ahmed','Password@123','pw@123',1001,'Anjuka',null,'2023-12-12',null);
call insertdata2(2,'Abdul rahman','Password@123','pw@123',1002,'Anjuka',null,'2023-12-12',null);
call insertdata2(3,'Abinaya','Password@123','pw@123',1003,'Anjuka',null,'2023-12-12',null);					
call insertdata2(4,'Aarif','Password@123','pw@123',1004,'Anjuka',null,'2023-12-12',null);					
call insertdata2(5,'ALEXANDAR','Password@123','pw@123',1005,'Anjuka',null,'2023-12-12',null);					
call insertdata2(6,'Anand','Password@123','pw@123',1006,'Anjuka',null,'2023-12-12',null);					
call insertdata2(7,'Anjuka','Password@123','pw@123',1007,'Anjuka',null,'2023-12-12',null);					
call insertdata2(8,'Aravind','Password@123','pw@123',1008,'Anjuka',null,'2023-12-12',null);					
call insertdata2(9,'Basheer','Password@123','pw@123',1009,'Anjuka',null,'2023-12-12',null);					
call insertdata2(10,'chandran ','Password@123','pw@123',1010,'Anjuka',null,'2023-12-12',null);					
call insertdata2(11,'Danielraj','Password@123','pw@123',1011,'Anjuka',null,'2023-12-12',null);					
call insertdata2(12,'Dinesh ','Password@123','pw@123',1012,'Anjuka',null,'2023-12-12',null);					
call insertdata2(13,'Vasanth','Password@123','pw@123',1013,'Anjuka',null,'2023-12-12',null);				
call insertdata2(14,'Gopal','Password@123','pw@123',1014,'Anjuka',null,'2023-12-12',null);					
call insertdata2(15,'HARSH','Password@123','pw@123',1015,'Anjuka',null,'2023-12-12',null);					
call insertdata2(16,'Jayapravin ','Password@123','pw@123',1016,'Anjuka',null,'2023-12-12',null);					
call insertdata2(17,'jemimah ','Password@123','pw@123',1017,'Anjuka',null,'2023-12-12',null);					
call insertdata2(18,'Manimohana','Password@123','pw@123',1018,'Anjuka',null,'2023-12-12',null);					
call insertdata2(19,'Kiruthiga','Password@123','pw@123',1019,'Anjuka',null,'2023-12-12',null);					
call insertdata2(20,'Nancy','Password@123','pw@123',1020,'Anjuka',null,'2023-12-12',null);					
call insertdata2(21,'Natrayan','Password@123','pw@123',1021,'Anjuka',null,'2023-12-12',null);					
call insertdata2(22,'Pavithra','Password@123','pw@123',1022,'Anjuka',null,'2023-12-12',null);					
call insertdata2(23,'prabhaharn','Password@123','pw@123',1023,'Anjuka',null,'2023-12-12',null);					
call insertdata2(24,'RAMKI','Password@123','pw@123',1024,'Anjuka',null,'2023-12-12',null);					
call insertdata2(25,'Sahith Afridi','Password@123','pw@123',1025,'Anjuka',null,'2023-12-12',null);					
call insertdata2(26,'sakthivel','Password@123','pw@123',1026,'Anjuka',null,'2023-12-12',null);					
call insertdata2(27,'Sanjay','Password@123','pw@123',1027,'Anjuka',null,'2023-12-12',null);					
call insertdata2(28,'Santhosh','Password@123','pw@123',1028,'Anjuka',null,'2023-12-12',null);					
call insertdata2(29,'Saran','Password@123','pw@123',1029,'Anjuka',null,'2023-12-12',null);				
call insertdata2(30,'Siranjeevi','Password@123','pw@123',1030,'Anjuka',null,'2023-12-12',null);						

select * from ofs_usr_login;

delimiter ##
drop procedure if exists insertdata3;##
create procedure insertdata3(
 in order_idp int ,in
  product_Namep varchar(255),in
  pricep double,in
  order_byp varchar(255),in
  Order_onp date,in
  delivered_byp varchar(255),in
  delivered_onp varchar(70),in
  cancel_orderp varchar(255),in
  ship_addressp varchar(255),in
  user_idp int
)
begin
insert into ofs_usr_order(order_id,product_Name,price,order_by,Order_on,delivered_by ,delivered_on,cancel_order,ship_address,user_id )
values(order_idp,product_Namep,pricep,order_byp,Order_onp,delivered_byp,delivered_onp,cancel_orderp,ship_addressp,user_idp);

end ##
delimiter ;

call insertdata3(1,'pesticides',800,'ahmed','2023-12-22','Ahmed','2023-12-28',null,'Trichy',1001);
call insertdata3(2,'blue copper',1800,'Abdul rahman','2023-12-22','Ahmed','2023-12-28',null,'chennai',1002);
call insertdata3(3,'seeds',800,'Abinaya','2023-12-22','Ahmed','2023-12-28',null,'madurai',1003);
call insertdata3(4,'fertilizers',800,'Aarif','2023-12-22','Ahmed','2023-12-28',null,'Trichy',1004);
call insertdata3(5,'DAP',800,'ALEXANDAR','2023-12-22','Ahmed','2023-12-28',null,'ooty',1005);
call insertdata3(6,'Deligate',1900,'Anand','2023-12-22','Ahmed','2023-12-28',null,'perambalur',1006);
call insertdata3(7,'Supreme Coupler',800,'Anjuka','2023-12-22','Ahmed','2023-12-28',null,'ariyalur',1007);
call insertdata3(8,'ROCO-fungiside',1000,'Aravind','2023-12-22','Ahmed','2023-12-28',null,'Trichy',1008);
call insertdata3(9,'fertilizers',800,'Basheer','2023-12-22','Ahmed','2023-12-28',null,'madurai',1009);
call insertdata3(10,'Urea',800,'chandran','2023-12-22','Ahmed','2023-12-28',null,'Thiruthani',1010);
call insertdata3(11,'soyabean',200,'Danielraj','2023-12-22','Ahmed','2023-12-28',null,'perambalur',1011);
call insertdata3(12,'wheets',600,'Dinesh','2023-12-22','Ahmed','2023-12-28',null,'oosur',1012);
call insertdata3(13,'cotton',1500,'Vasanth','2023-12-22','Ahmed','2023-12-28',null,'coimbatore',1013);
call insertdata3(14,'venus spanners',260,'Gopal','2023-12-22','Ahmed','2023-12-28',null,'thambaram',1014);
call insertdata3(15,'Bambusa Balcooa (Bamboo Plant)',35,'HARSH','2023-12-22','Ahmed','2023-12-28',null,'Trichy',1015);


select * from ofs_usr_order;
delete from ofs_usr_order where
pesticides
fertilizers
seeds
machinary
