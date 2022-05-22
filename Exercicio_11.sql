#11)
create user jose@localhost identified by "123456";
#a)
grant select, insert, update, delete 
	on aluno to jose@localhost;
grant select, insert, update, delete 
	on curso to jose@localhost;
grant select, insert, update, delete 
	on matricula to jose@localhost;
    
#b)
revoke delete on aluno from jose@localhost;
