// ��������� �������� ������ ���������� � ������������� ����������.
// ��. ����� ���� BlockVars.pas
uses Utils;

var 
  s: real := 0; 
  i: real := 1;

begin
  while i<10000000 do
  begin
    s += 1/i;
    i += 1;
  end;  
  writeln(s);
  writeln('����� ������� = ',Milliseconds/1000,' �');
end.
