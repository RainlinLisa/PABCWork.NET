// ����� �������� � ��������� �������. ������������� ��������� goto
const 
  sz = 10;
  m = 4;
  n = 5;

type Matrix = array [1..sz,1..sz] of integer;

label 1;

var matr: Matrix;

begin
  // ���������� ������� m x n ���������� �������
  for var i := 1 to m do
  for var j := 1 to n do
    matr[i,j] := Random(100);
  
  // ����� ������� 
  for var i := 1 to m do
  begin
    for var j := 1 to n do
      write(matr[i,j]:3);
    writeln;
  end;  
  
  // ���� �� � ������� ������� 5?
  var found5 := False;
  for var i := 1 to m do
  for var j := 1 to n do
    if matr[i,j]=5 then
    begin
      found5 := True;
      goto 1; // �� ��� ��������! �� ��� ������ ������ ������ �� ���� ��������� ������ �����
    end;
1: 
  if found5 then 
    writeln('������� 5 ������')
  else writeln('������� 5 �� ������')  
end.