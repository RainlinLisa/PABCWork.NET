// ������ string, string[n], shortstring
var 
  s: string; // ������, ���������� s, ������� �� �� �����
  s10: string[10]; // ������ ��� ss �����������
  ss: shortstring := s;
  f: file of string[10];
  // f: file of string; - ������

begin
  s := '12345678901234567890';
  s10 := s; // ���������
  writeln(s10);
  s += s; s += s;
  s += s; s += s;
  writeln(s);
  writeln('����� ������ = ',s.Length);
end.