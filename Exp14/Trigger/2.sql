--Create a trigger to display a message when a user enters a value > 20000 in the salary field of employee table.

create or replace trigger check_salary
after insert on employee
for each row
when (new.salary > 20000)

begin
    dbms_output.put_line('The salary of employee exceeds 20000');
end;
/
