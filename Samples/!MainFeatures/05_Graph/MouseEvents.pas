// ����������� ��������� ������� ����
uses GraphABC;

procedure MouseDown(x,y,mb: integer);
begin
  MoveTo(x,y);
end;

procedure MouseMove(x,y,mb: integer);
begin
  if mb=1 then LineTo(x,y);
end;

begin
  // �������� ������������ � ��������
  OnMouseDown := MouseDown;
  OnMouseMove := MouseMove
end.

