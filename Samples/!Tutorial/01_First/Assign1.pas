// ������������� ��������������� ����������
var r: real;

begin
  write('������� r: ');
  readln(r);
  var r2,r4,r8: real; // ��������������� ����������
  r2 := r * r;
  r4 := r2 * r2;
  r8 := r4 * r4;
  writeln(r,' � ������� 8 = ',r8);
end.