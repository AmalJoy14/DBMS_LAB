declare
    x number := &x;
    y number := &y;
    ch number := &ch;
begin
     dbms_output.put_line('Enter your choice: [1. Addition 2. Subtraction 3. Multiplication 4. Division]');
    if ch = 1 then
        dbms_output.put_line('Sum is ' || (x + y));
    elsif ch = 2 then
        dbms_output.put_line('Difference is ' || (x - y));
    elsif ch = 3 then
        dbms_output.put_line('Product is ' || (x * y));
    elsif ch = 4 and y = 0 then
        dbms_output.put_line('Error , Division by Zero');
    elsif ch = 4 then
        dbms_output.put_line('Quotient is ' || (x / y));
    else
        dbms_output.put_line('Invalid choice!');
    end if;
end;
