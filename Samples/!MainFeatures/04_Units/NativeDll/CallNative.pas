// ����� ������� �� ������� dll
function add(a,b: integer): integer; external 'NativeDll.dll' name 'add'; // ���������� ������� �������

begin // �������� ���������
  writeln(add(2,3));
end.
