// ���������, ��������� ����� � ���� a.txt
const 
  n = 30;
  filename = 'pifagor.txt';

var f: Text;

begin
  assign(f,filename);
  rewrite(f);
  for var i:=1 to n do 
  begin
    for var j:=1 to n do 
      write(f,i*j:4);
    writeln(f);  
  end;    
  close(f);
  writeln('������� ��������� �������� � ���� '+filename);
end.