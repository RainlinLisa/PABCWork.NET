// ���� for. ����� ��������. �������� break
const n = 10;

var 
  k: integer;
  found: boolean;
  
begin
  writeln('������� ����� ��� ������: ');
  readln(k);
  writelnFormat('������� {0} �����',n);
  found := False;
  for var i:=1 to n do
  begin
    var x: integer;
    read(x);
    if x=k then
    begin
      found := True;
      break;
    end;
  end;
  if found then
    writeln('�������')
  else writeln('�� �������');  
end.