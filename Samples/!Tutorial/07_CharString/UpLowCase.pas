// ������������� ����������� ������� UpperCase, LowerCase
var c: char;

begin
  for c:='a' to 'z' do
    write(UpperCase(c));
  writeln;
  for c:='A' to 'Z' do
    write(LowerCase(c));
  writeln;
  for c:='�' to '�' do
    write(UpperCase(c));
  writeln;
  for c:='�' to '�' do
    write(LowerCase(c));
  writeln;
  var s := '���� � ���� ���� � ����������';
  s := UpperCase(s);
  writeln(s);
  s := LowerCase(s);
  writeln(s);
end.
