// ���� for

const n = 20;

var i: integer;

begin
  writeln('����� �� 1 �� ',n,':');
  for i:=1 to n do
    write(i,' ');
  writeln;
  writeln;
  writeln('����� �� ',n,' �� 1:');
  for i:=n downto 1 do
    write(i,' ');
  writeln;
  writeln;
  writeln('��������� ���������� �����:');
  for c: char := 'a' to 'z' do
    write(c,' ');
  writeln;
end.