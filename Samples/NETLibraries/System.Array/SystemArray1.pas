Uses System, PABCSystem;

const Size = 10;

procedure PrintArray<T>(a: array of T);
begin
  foreach v: T in a do
    Write(v, ' ');
  Writeln;
end;    

var a: array of integer;

begin
  SetLength(a, Size);
  // ���������� �������
  for var i:=0 to a.Length-1 do
    a[i] := Random(100);
  
  // ����� ���� ��������� �������
  PrintArray(a);
  
  // ���������� ������� (���� & ������������ ��� ����,
  // ����� ��������������� �������� ������ array ��� ����������� ������ Array)
  &Array.Sort(a);

  PrintArray(a);

  // ��������� �������
  &Array.Reverse(a);

  PrintArray(a);

  // ����� ��������� �������� � ������
  var i := &Array.IndexOf(a, 99);
  Writeln(i);
end.