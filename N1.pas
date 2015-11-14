program n1;
var n:word;
    x:real;
begin
    n:=0;
    x:=1.0;
    repeat
      inc(n);
      x:=2.0*x;
    until x>1.0e5;
    writeln(n, ' ', x);
    readln;
end.