use cad_ofs;
show tables;
select * from ofs_usr_reg;
INSERT INTO ofs_usr_reg(user_id, First_name, Last_name, User_name, Password, Created_by, Modified_by, Created_on, Modified_on)
VALUES (1001,'Aarif','S','username@01','Password@123','Anjuka',null,'2023-12-12',null);
INSERT INTO ofs_usr_reg VALUES (1001,'Aarif','S','username@01','Password@123','Anjuka',null,'2023-12-12',null);
INSERT INTO ofs_usr_reg(First_name, Last_name, User_name, Password, Created_by, Modified_by, Created_on, Modified_on)
VALUES ('Aarif','S','username@01','Password@123','Anjuka',null,'2023-12-12',null);

delimiter $$

drop procedure if exists insertMethod2;$$
create procedure insertMethod2(
 in  First_nameParam varchar(255) , in
  Last_nameParam varchar(255) , in
  User_nameParam varchar(255) , in
  PasswordParam varchar(255) , in
  Created_byParam varchar(255) , in
  Modified_byParam varchar(255) , in
  Created_onParam date , in
  Modified_onParam date
)
begin

INSERT INTO ofs_usr_reg(First_name, Last_name, User_name, Password, Created_by, Modified_by, Created_on, Modified_on)
VALUES (First_nameParam,Last_nameParam,User_nameParam,PasswordParam,Created_byParam,Modified_byParam,Created_onParam,Modified_onParam);

end $$
delimiter ;

select * from ofs_usr_reg;
describe ofs_usr_reg;
call  insertMethod1(1002,'Aarif','S','username@03','Password@123','Anjuka',null,'2023-12-12',null);
call  insertMethod2('Aarif','S','username@02','Password@123','Anjuka',null,'2023-12-12',null);

delimiter $$

drop procedure if exists insertMethod1;$$
create procedure insertMethod1(
in user_idParam int  , in
  First_nameParam varchar(255) , in
  Last_nameParam varchar(255) , in
  User_nameParam varchar(255) , in
  PasswordParam varchar(255) , in
  Created_byParam varchar(255) , in
  Modified_byParam varchar(255) , in
  Created_onParam date , in
  Modified_onParam date
)
begin

INSERT INTO ofs_usr_reg(user_id, First_name, Last_name, User_name, Password, Created_by, Modified_by, Created_on, Modified_on)
VALUES (user_idParam,First_nameParam,Last_nameParam,User_nameParam,PasswordParam,Created_byParam,Modified_byParam,Created_onParam,Modified_onParam);

end $$
delimiter ;


INSERT INTO ofs_usr_reg(First_name, Last_name, User_name, Password, Created_by, Modified_by, Created_on, Modified_on)
VALUES ('Aarif','S','username@01','Password@123','Anjuka',null,'2023-12-12',null);



delimiter $$

drop procedure if exists insertMethod3;$$
create procedure insertMethod3(
 in  First_nameParam varchar(255) , in
  Last_nameParam varchar(255) , in
  User_nameParam varchar(255)
)
begin

INSERT INTO ofs_usr_reg(First_name, Last_name, User_name)
VALUES (First_nameParam,Last_nameParam,User_nameParam);

end $$
delimiter ;
describe ofs_usr_reg;
select * from ofs_usr_reg;

call  insertMethod3('Aarif','S','username@04');
