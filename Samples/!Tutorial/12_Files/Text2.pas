// ���������, ��������� ����� � ���� a.txt
var 
  f: Text;
  a: array of string := ('������','�������','������','�����','���','�����','�����');

begin
  assign(f,'a.txt');
  rewrite(f);
  for var i:=0 to a.Length-1 do 
    writeln(f,a[i]);
  close(f);
  writeln('����� ������� � ���� a.txt');
end.