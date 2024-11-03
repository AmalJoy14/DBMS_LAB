--Display the total number of customers using function in pl/sql from the table customer.

create or replace function totalcustomers
return number 
as
total number(2) := 0;

begin
   select count(*) into total from customers;
   return total;
end;
/

---------

declare 
   c number(2); 

begin 
   c := totalcustomers(); 
   dbms_output.put_line('Total no. of Customers: ' || c); 
end; 
/
