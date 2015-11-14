// ������������ ��������� ������� ������� ����
uses GraphABC,ABCSprites,ABCObjects,Events;

var
  s: SpriteABC;
  t: TextABC;

procedure MyMouseDown(x,y,mb: integer);
begin
  if s.PtInside(x,y) then
  begin
    // ������� � ���������� ��������� �������
    if s.State<s.StateCount then
      s.State := s.State + 1
    else s.State := 1;
    t.Text := '��������� �������: ' + s.StateName;
  end;
end;
  
begin
  Window.Title := '�������� ����� �� �������';
  SetWindowSize(400,300);
  CenterWindow;
  s := new SpriteABC(150,100,'spr.spinf');
  t := new TextABC(55,30,15,'��������� �������: '+s.StateName,clRed);
  OnMouseDown := MyMouseDown;
end.