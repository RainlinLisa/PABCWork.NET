// ����� ������������ ������ add ������ Class1, ����������� � ������������ ���� ClassLibrary1
// ����� Class1 ������� � ���������� ClassLibrary1.dll, ����������������� �� C#

{$reference ClassLibrary1.dll}
uses ClassLibrary1;

begin
  writeln(Class1.add(2,3));  
end.