// ���� for. �������� �� ��������� �����
const n = 10;

var max: real;

begin
  writelnFormat('������� {0} �����',n);
  max := integer.MinValue; // ����� ��������� ����� �����
  for var i:=1 to n do
  begin
    var x: real;
    read(x);
    if x>max then
      max := x;
  end;  
  writeln('������������ ����� ',max);
end.