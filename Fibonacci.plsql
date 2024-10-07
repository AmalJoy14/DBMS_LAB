declare
    x number := 0;
    y number := 1;
    z number;
    fib_count number := 2;     --count is reserved
    n number := &n;
begin
    dbms_output.put_line('0');
    dbms_output.put_line('1');
    while fib_count < n loop
        z := x + y;
        x := y;
        y := z;
        dbms_output.put_line(z);
        fib_count := fib_count + 1;
    end loop;
end; 
