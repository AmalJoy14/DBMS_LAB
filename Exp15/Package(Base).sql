set serveroutput on

--SUM OF 2 NUMBERS : PACKAGE

--package specification
create or replace package PK1 as
procedure PROC1(a int,B int);
end PK1;

--Set Package body 
create or replace package body pk1 as
procedure proc1(a int,b int) is
 begin
  dbms_output.put_line('Sum:'||(a+b));
 end proc1;
end pk1;

--Main function where we use the package.
declare
  p int;
  q int;
begin
  p:=&p;
  q:=&q;
  pk1.proc1(p,q);
end;
