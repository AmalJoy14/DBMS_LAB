/*Question: Create a package pk1 consisting of the following functions and procedures
Procedure proc1 to find the sum, average and product of two numbers
Procedure proc2 to find the square root of a number
Function named fn11 to check whether a number is even or not
A function named fn22 to find the sum of 3 numbers
Use this package in a PL/SQL program. Call the functions f11, f22 and procedures pro1, pro2 within
the program and display their result.*/

set serveroutput on

--package specification
create or replace package pk1 as
 procedure proc1(a number,b number);
 procedure proc2(n number);
 function fn11(n number) return varchar2;
 function fn22(a number,b number,c number) return number;
end PK1;

--Set Package body 
create or replace package body pk1 as

procedure proc1(a number,b number) as
 begin
  dbms_output.put_line('Sum:'||(a+b));
  dbms_output.put_line('Average:'||(a+b)/2);
  dbms_output.put_line('Product:'||(a*b));
 end proc1;
 
procedure proc2(n number) as
 begin
  dbms_output.put_line('Square root:'|| SQRT(n));
 end proc2;

function fn11(n number) return varchar2 is
 begin
  if (MOD(n,2)=0) then
    return 'The number is even';
  else
    return 'The number is odd';
  end if;
 end;
 
function fn22(a number,b number,c number) return number is
 begin
  return a + b + c;
 end;

end pk1;


--Main function where we use the package.
declare
  p number :=&p;
  q number :=&q;
  r number :=&r;
  n number :=&n;
  res1 varchar2(100);
  res2 number;
begin
  pk1.proc1(p,q);
  pk1.proc2(n);
  
  res1 := pk1.fn11(n);
  dbms_output.put_line(res1);
  
  res2 := pk1.fn22(p,q,r);
  dbms_output.put_line('Sum of 3 numbers p,q,r :'|| res2);
end;

--INPUT--
p : 2
q : 3
r : 4
n : 5

--OUTPUT--
Sum:5
Average:2.5
Product:6
Square root:2.23606797749978969640917366873127623544
The number is odd
Sum of 3 numbers p,q,r :9
