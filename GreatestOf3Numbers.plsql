declare
  x number := &x;
  y number := &y;
  z number := &z;
begin
  if x >= y and x >= z
   then
     dbms_output.put_line(x || 'is greatest');
  elsif y >= x and y >= z
   then
     dbms_output.put_line(y || 'is greatest');
  else
     dbms_output.put_line(z || 'is greatest');
  end if;
end;
