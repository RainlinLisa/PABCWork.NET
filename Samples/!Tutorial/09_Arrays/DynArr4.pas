// �������� ������������� ������� � �������� ���������

procedure WriteArr(a: array of integer); // var ��������� �� �����, �.�. ������������ ������ �������� ������� �� �������� ������
begin
  foreach x: integer in a do
    write(x,' ');
  writeln;
end;

procedure CreateRandomArr(var a: array of integer; n: integer); // var ��������� �����, �.�. � ��������� ��������� ����� ������������ ������ 
begin
  a := new integer[n];
  for var i:=0 to a.Length-1 do
    a[i] := Random(10);
end;

var a: array of integer;

begin
  writeln('��������� ����� ������: ');
  CreateRandomArr(a,30);
  WriteArr(a);
end.