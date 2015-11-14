// ��������� � ������ ������ � ������������ ��������
uses System;

procedure Print(a: array of integer);
begin
  foreach v: integer in a do
    Write(v, ' ');
  Writeln;
end;    

var a: array of integer;

begin
  SetLength(a,10); // ��������� ������. � ����� ���: a := new integer[10];
  
  // ���������� �������
  for var i:=0 to a.Length-1 do
    a[i] := PABCSystem.Random(100);
  
  // ����� ���� ��������� �������
  Print(a);
  
  // ���������� ������� (���� & ������������ ��� ����,
  // ����� ��������������� �������� ������ array ��� �����������
  // ������ Array)
  &Array.Sort(a);
  Print(a);

  // ��������� �������
  &Array.Reverse(a);
  Print(a);

  // ��������� �������������� � ����������� ���������. �� �� ������ SetLength
  &Array.Resize(a,a.Length+2);
  Print(a);

  // ����� ��������� �������� � ������
  var i := &Array.IndexOf(a, 50);
  Writeln(i);
end.