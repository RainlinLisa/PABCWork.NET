// ����������� ������� UpperCase LowerCase
var c: char;

begin
  c := '�';
  writelnFormat('������ {0} � ������� ��������: {1}',c,UpperCase(c));
  c := 'F';
  writelnFormat('������ {0} � ������ ��������: {1}',c,LowerCase(c));
end.