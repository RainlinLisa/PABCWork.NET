// ��������� ���������� �����
var
  i: integer;
  r: real;

begin
  i := Random(100);
  writeln('��������� ����� � ��������� 0..99: ',i);
  i := Random(2,5);
  writeln('��������� ����� � ��������� 2..5: ',i);
  r := Random;
  writeln('��������� ������������ � ��������� [0,1): ',r);
end.