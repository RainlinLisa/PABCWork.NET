// �������������� �����
// ������ � ���� 10 �����, ��� ��������� ������� - ������ ���� ����� � �������� �����
const filename = 'a.dat';

var f: file of integer;

begin
  if not FileExists(filename) then
  begin
    assign(f,filename);
    rewrite(f);
    writeln('������ � ���� ',filename);
    for var i:=1 to 10 do
    begin
      var x := random(100); 
      write(x,' ');
      write(f,x);
    end;  
    close(f);  
  end
  else 
  begin
    assign(f,filename);
    reset(f);
    writeln('������ �� ����� ',filename);
    for var i:=1 to 10 do
    begin
      var x: integer;
      read(f,x);
      write(x,' ');
    end;  
    close(f);  
    erase(f);
  end;  
end.