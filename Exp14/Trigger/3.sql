-- Create a trigger w.r.t customer_details table.
--Increment the value of count_row (in cust_count table) whenever a new tuple is inserted and decrement the value of count_row when a tuple is deleted.
--Initial value of the count_row is set to 0.

create table cust_count(count_rows int);
insert into cust_count values(0);


create or replace trigger trigger5
after insert or delete on customer_details
for each row

begin
    if deleting then
      update cust_count set count_rows = count_rows - 1; 
    else 
      update cust_count set count_rows = count_rows + 1; 
    end if;
end;
/
