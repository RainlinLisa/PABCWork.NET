// ���� while. ����� ���� �������������� �����
var m: integer;

begin
  writeln('������� ������������� �����: ');
  read(m);
  write('����� ����� � �������� �������: ');
  var s := 0;
  while m>0 do
  begin
    var digit := m mod 10;
    write(digit,' ');
    s += digit;
    m := m div 10;
  end;
  writeln;
  writeln('����� ���� = ',s);
end.