program hz04;
var j,n,a,b,c:integer;

begin
n:=25;
a:=1;
b:=1;
for j:=3 to n do
begin
  c:=b;
  b:=a+b;
  a:=c;
  end;
Writeln('F_', n, ' = ', b);
readln;  
end.