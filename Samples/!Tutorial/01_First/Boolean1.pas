// ���������� ���. ���������� ��������� � and, or � not
var 
  b: boolean;
  x: integer;
begin
  write('������� x (�� 1 �� 9): ');
  readln(x);
  b := x=5;
  writeln('x=5? ',b);
  b := (x>=3) and (x<=5);
  writeln('x=3,4 ��� 5? ',b);
  b := (x=3) or (x=4) or (x=5);
  writeln('x=3,4 ��� 5? ',b);
  b := not Odd(x);
  writeln('x - ������? ',b);
end.