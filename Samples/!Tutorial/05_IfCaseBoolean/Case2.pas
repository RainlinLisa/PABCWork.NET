// �������� ������
var day: integer;

begin
  writeln('������� ����� ��� ������ (1..7): ');
  readln(day);
  case day of
    1..5: writeln('������');
    6,7: writeln('��������');
  else writeln('�������� ���� ������');
  end;
end.