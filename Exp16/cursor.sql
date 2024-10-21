--Only question 1) present
create table bank_details(accno int primary key,cname varchar(50), balance int,adate date);

insert into bank_details values(1001,'aby',3005,'10-oct-15'); 
insert into bank_details values(1002,'alan',4000,'05-may-95'); 
insert into bank_details values(1003,'amal',5000,'16-mar-92');
insert into bank_details values(1004,'jeffin',3500,'01-apr-50'); 

select * from bank_details;

create table banknew(accno int ,intr int);

declare cursor temp is
  select accno,cname,balance,adate from bank_details;
  tempvar temp %rowtype;
  intr int;
  
begin 
  open temp;
  loop
    fetch temp into tempvar;
    exit when temp%notfound;
    intr := .08*tempvar.balance; 
    insert into banknew values(tempvar.accno,intr); 
  end loop;
  close temp; 
end; 

select * from banknew;
