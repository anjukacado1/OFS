use cad_ofs;
show tables;
select * from ofs_usr_reg;
call insertMethod3('karthick','p','us@12')update ofs_usr_reg set first_name='anju' where user_id=1005;








update ofs_usr_reg set first_name='anju', co='p' where user_id=1005;


delimiter $$

drop procedure if exists UpdateData3;$$
create procedure UpdateData3(
in tablename varchar(60),
in columnname varchar(50),
in ColumnUpdateValuePara varchar(25),

in columnname1 varchar(50),
in ColumnUpdateValue1Para varchar(25),
in conditionColumnName varchar(50),
in conditionValueParam int
)
begin

set @Updatestatement =concat("update ",tablename," set ",columnname,"=\'",ColumnUpdateValuePara,"\'," ,columnname1,"=\'",ColumnUpdateValue1Para,"\'"," where ",conditionColumnName,"=",conditionValueParam);
prepare stmts from @Updatestatement;
execute stmts;

end $$
delimiter ;

call UpdateData2('ofs_usr_login','user_name','anjuka','login_id',1005);
call UpdateData3('ofs_usr_reg','first_name','anju','password','s@12','user_id',1005);
select * from ofs_usr_reg;
