// �������� ���������� �������� ���������� � ����� x �� ����� �������
const n=5;

var 
  x,a: real;

begin
  writeln('������� �������� x: ');
  readln(x);

  writeln('������� ������������ ���������� (',n+1,' ����): ');
  read(a);
  var s := a;
  for var i:=1 to n do
  begin
    read(a);
    s := s*x + a;
  end;

  writeln('�������� ���������� � ����� ',x,' ����� ',s);
end.