// ���� for. a � ������� n
var 
  a: real;
  n: integer;

begin
  write('������� a,n: ');
  readln(a,n);
  var p: real := 1;
  for var i:=1 to n do
    p := p * a; // ����� p *= a
  writelnFormat('{0} � ������� {1} = {2}',a,n,p);  
end.