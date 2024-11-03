set serveroutput on;
show serveroutput;

create or replace function factorial(n int)
return int 
as 
  fact int;

begin
  fact:=1;
  for i in 1..n loop
    fact:=fact * i;
  end loop;
  return fact;
end;
/

--------------

declare
  c integer;
  result integer;

begin
  c:=&c;
  result:=factorial(c);
  dbms_output.put_line('The factorial is '||result);
end;
/
