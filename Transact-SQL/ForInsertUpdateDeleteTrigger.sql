create table control_exemp(
	username varchar(30),
	date date,
	hour varchar(20),
	action varchar(50)
 );

 Create table ExEmployee (
 id int
 );

CREATE TRIGGER t_control_exemployee
ON ExEmployee
FOR INSERT, UPDATE, DELETE
AS 
BEGIN
    DECLARE @hour VARCHAR(20) = Right(GETDATE(), 8);
    
    IF EXISTS (SELECT 0 FROM INSERTED)
    BEGIN
        IF EXISTS (SELECT 0 FROM DELETED)
        BEGIN
            -- Update op
            INSERT INTO control_exemp 
            VALUES (SUSER_NAME(), GETDATE(), @hour, 'Update on ExEmployee');
        END
        ELSE
        BEGIN
            -- Insert op
            INSERT INTO control_exemp
            VALUES (SUSER_NAME(), GETDATE(), @hour, 'Inserted on ExEmployee');
        END
    END
    ELSE
    BEGIN
        -- Delete op
        INSERT INTO control_exemp
        VALUES (SUSER_NAME(), GETDATE(), @hour, 'Deleted on ExEmployee');
    END
END;

insert into ExEmployee values (1);
update ExEmployee set id = 2;
delete from ExEmployee where id = 2;

select * from control_exemp;

drop table ExEmployee, control_exemp;
