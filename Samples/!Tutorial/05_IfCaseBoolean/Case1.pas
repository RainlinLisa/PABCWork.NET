// �������� ������
var x: integer;

begin
  writeln('������� ������ (1..5): ');
  readln(x);
  case x of
    1: writeln('�������');
    2: writeln('������');
    3: writeln('������');
    4: writeln('��������');
    5: writeln('�������');  
  else writeln('����� ������ ���');
  end;
end.