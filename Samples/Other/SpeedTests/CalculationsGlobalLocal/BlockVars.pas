// ��������� �������� ������ ���������� � ������������� ����������.
// ��. ����� ���� GlobalVars.pas
uses Utils;

begin
  var s := 0.0;
  var i: real := 1;
  while i<10000000 do
  begin
    s += 1/i;
    i += 1;
  end;  
  writeln(s);
  writeln('����� ������� = ',Milliseconds/1000,' �');
end.
