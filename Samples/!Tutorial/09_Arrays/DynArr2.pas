// ������������� ������������� �������. 
var a: array of integer;

begin
  writeln('��� ������������ ������������ �������� ��� ���������� �������� ��������� �� ���� ������:');
  var n := 20;
  a := new integer[n]; // ������ ������ ��������� ������
  for var i:=0 to a.Length-1 do
    a[i] := i;

  writeln('�� ������������ b[5]: a[5]=',a[5]);
  
  var b: array of integer;
  b := a;
  b[5] := 666;
  writeln('����� ������������ b[5]: a[5]=',a[5]);
end.