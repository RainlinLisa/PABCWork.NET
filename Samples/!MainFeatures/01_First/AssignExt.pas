// ������������ += -= *= /=
var 
  i: integer;
  r: real;

begin
  i := 1;
  writeln('i := 1; i = ',i);
  i += 2; // ���������� �� 2
  writeln('i += 2; i = ',i);
  i *= 3; // ��������� �� 3
  writeln('i *= 3; i = ',i);
  writeln;
  r := 6;
  writeln('r := 6; r = ',r);
  r /= 2;
  writeln('r /= 2; r = ',r);
end.