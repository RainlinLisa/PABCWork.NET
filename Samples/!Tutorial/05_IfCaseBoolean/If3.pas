// �������� ��������. ���������� ������� � or � and
var x: integer;

begin
  writeln('������� x (�� 1 �� 99): ');
  readln(x);
  if (x>=1) and (x<=9) then 
    writeln('����������� �����');
  // Odd - �������, ������������ True ������ ���� x - �������
  if Odd(x) and (x>=10) and (x<=99) then 
    writeln('�������� ���������� �����');
  if (x=3) or (x=9) or (x=27) or (x=81) then 
    writeln('������� ������');
end.