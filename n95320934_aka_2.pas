program n95320934_aka_2;
var s,x:Real;
n:word;
begin
s:=0.0;
n:=0;
while  n < 100 do
begin 
inc(n);
x := 3.0*n+2.0;
x:=x;
s:=s+x;

//if (n mod 1000 = 0) then writeln(s,' ',n);
end;
writeln(n, ' ', s);
readln;
end.