var 
  s: string;
  i: integer;
  r: real;

begin
  // �������������� ������ � �����
  s := '123,3443'; // ������� ����� ���������� ������� - ��������� Windows
  if not real.TryParse(s, r) then
    Writeln('������ s �� �������� ��������� �������������� ������������� �����')
  else Writeln(r);
     
  if not integer.TryParse(s, i) then
    Writeln('������ s �� �������� ��������� �������������� ������ �����');
     
  // �������������� ����� � ������
  i := 10;
  s := i.ToString;
  Writeln(s);
  
  s := '';
  for i:=1 to 9 do
    s += i.ToString;
  Writeln(s);
end.