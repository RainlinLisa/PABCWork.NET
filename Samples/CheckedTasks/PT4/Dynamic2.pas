// ������ ������� ������ Dynamic2 �� ������������ ��������� Programming Taskbook
uses PT4;

var p1,p2: PNode;

begin
  Task('Dynamic2');
  read(p1);
  var n := 0;
  while p1 <> nil do
  begin
    write(p1^.Data);
    n += 1;
    p2 := p1;       { ��������� ����� �������� �������� }
    p1 := p1^.Next; { � ��������� � ���������� �������� }
  end;
  write(n, p2);
end.