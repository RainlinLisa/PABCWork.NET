// ��� ���� ����� ���������� - ����������� �� Object
var 
  i: integer;
  r: real;
  o: object;

begin
  o := i;
  writeln(o.GetType);
  o := r;
  writeln(o.GetType);
  if o.GetType=typeof(real) then
    writeln('� ���������� o - ������������ ���');
end.