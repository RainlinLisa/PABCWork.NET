// ���� repeat. �������� �����
var mark: integer;

begin
  repeat
    writeln('������� ������ (2..5): ');
    readln(mark);
    if (mark<2) or (mark>5) then
      writeln('������ ��������. ��������� ����');
  until (mark>=2) and (mark<=5);
  writeln('�� ����� ������ ',mark);
end.