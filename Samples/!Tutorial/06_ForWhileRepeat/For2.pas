// ���� for. ������������������ ��������� �����

const n = 20;

var i: integer;

begin
  write('��������� ������: ');
  for i:=1 to n do
    write(Random(2,5),' ');
  writeln;
  write('��������� ����� �� 1 �� 99: ');
  for i:=n downto 1 do
    write(Random(1,99),' ');
end.