// ������������� ������������� �������. 
// ��������� SetLength ��������� ������ ��� ������������ ������
// �������� foreach (������ �������� ������ �� ������)
var a: array of integer;

begin
  var n := 20;
  SetLength(a,n);
  for var i:=0 to a.Length-1 do
    a[i] := Random(1,9);
  writeln('���������� ���������� ������������� ������� �����: ');  
  foreach x: integer in a do
    write(x,' ');
end.