// �������� ����������� �������� �����
var 
  N: integer;
  IsPrime: boolean;

begin
  writeln('������� �����: ');
  readln(N);

  IsPrime := True;
  for var i:=2 to round(sqrt(N)) do // ���� ����� ���������, �� ���� �� ��� ������������ <= (sqrt(N)) 
    if N mod i = 0 then
    begin
      IsPrime := False;
      break;
    end;
  
  if IsPrime then
    writeln('����� ',N,' �������')
  else writeln('����� ',N,' ���������');  
end.