// ���������� �����
var 
  f: file;
  i: integer;
  r: real;
  s: string;

begin
  assign(f,'a.dat');
  rewrite(f);
  // ���������� � ���� ������ ����� �����
  write(f,1,2.5,'Hello');  
  close(f);
  reset(f);
  // ��������� ��� ������ �� �����
  read(f,i,r,s);
  write(i,' ',r,' ',s);
  close(f);
end.