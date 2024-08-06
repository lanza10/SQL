--This create the login but not the user
create login UsuarioTest with password = 'Password1234',
check_expiration = on, -- this forces the user to change the password
check_policy = on; -- this forces the user password to have some specific conditions

--This create the user
create user UsuarioTest for login UsuarioTest
with default_schema = AdventureWorks;

--This give permission on all dbo scheme tables to the user
grant select on schema::dbo to UsuarioTest;

--This allows user to create tables on dbo scheme
grant create table to UsuarioTest as dbo;

--This allows user to insert, update or delete fields on the indicated table
grant insert , update, delete on dbo.DimEmployee to UsuarioTest;

--This denies the permission allowed previously of inserting, upadating and deletieng fielt on that table to the user
revoke insert, update, delete 
on dbo.DimEmployee to UsuarioTest;