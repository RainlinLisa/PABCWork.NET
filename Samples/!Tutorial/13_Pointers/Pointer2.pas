// ���������� ���������
// �� ����� ����������� ����� �����, �� ��� ������������� ���������� 
// ����� ���������� � ��������������� ���������
var
  i: integer := 5;
  r: real := 3.14;
  p: pointer;
  
type 
  pinteger = ^integer;
  preal = ^real;
  
begin
  writeln('�������� �������� ���������� i � r: ');
  writeln(i,' ',r);
  p := @i; 
  pinteger(p)^ := 8;
  p := @r;
  preal(p)^ += 1;
  writeln('����� �������� ���������� i � r: ');
  writeln(i,' ',r);
end.  