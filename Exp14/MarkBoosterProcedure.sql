--Create a procedure pr1 to update all rows in the database.
--Boost the marks of all students by 5%.

create or replace procedure boost
as 

begin
   update student_details set marks = marks + (marks * 0.05);
end;
/

-------

begin
  boost();
  dbms_output.put_line('Marks Boosted'); 
end;
/
