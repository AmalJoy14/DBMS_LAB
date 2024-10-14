-- Create a trigger whenever a new record is inserted in the customer_details table.

create or replace trigger Trigger3
after insert on customer_details
for each row 

begin
  dbms_output.put_line('The row is inserted');
end;
/

---------------------------
  
--drop trigger trigger2;

insert into customer_details values(1,'Amal','ABCD Street');

--OUTPUT--
--TRIGGER TRIGGER3 compiled
--1 rows inserted.
--The row is inserted
