program summ_1;
var
k, summ:double;
f,e,n,i:integer;
begin 
  writeln('������� ���-�� ������ ����:');
  readln(n);
  writeln('������� �������� �������� (���-�� ���� ����� �������:');
  readln(e);
  f:=1;
  summ:=-1;
  for i:=2 to n do
    begin
    f:=f*i;
    if i mod 2 = 0 then k:=1 
      else k:=-1;
    summ:= summ + k/f;
    end;
  writeln('����� ����� = ', summ:10:e);
end.