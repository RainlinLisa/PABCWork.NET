// ����������� ������� Ord Chr
var 
  i: integer;
  c: char;

begin
  c := 'z';
  i := Ord(c);
  writelnFormat('��� ������� {0} � ��������� Windows ����� {1}',c,i);
  i := 193;
  c := Chr(i);
  writelnFormat('������ � ����� {0} � ��������� Windows - ��� {1}',i,c);
end.