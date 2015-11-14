uses ABCObjects,GraphABC;

const CountSquares = 20;

var
  /// ������� �����
  CurrentDigit: integer;
  /// ���������� ������
  Mistakes: integer;
  /// ������ ����������
  StatusRect: RectangleABC;

/// ����� �������������� ������
procedure DrawStatusText;
begin
  if CurrentDigit<=CountSquares then
    StatusRect.Text := '������� ���������: ' + IntToStr(CurrentDigit-1) + '    ������: ' + IntToStr(Mistakes)
  else StatusRect.Text := '���� ��������. �����: ' + IntToStr(Milliseconds div 1000) + ' �.    ������: ' + IntToStr(Mistakes);
end;

/// ���������� ������� ����
procedure MyMouseDown(x,y,mb: integer);
begin
  var ob := ObjectUnderPoint(x,y);
  if (ob<>nil) and (ob is RectangleABC) then
    if ob.Number=CurrentDigit then
    begin
      ob.Destroy;
      Inc(CurrentDigit);
      DrawStatusText;
    end
    else
    begin
      ob.Color := clRed;
      Inc(Mistakes);
      DrawStatusText;
    end;
end;

begin
  Window.Title := '����: ����� ��� �������� �� �������';
  Window.IsFixedSize := True;
  for var i:=1 to CountSquares do
  begin
    var x := Random(WindowWidth-50);
    var y := Random(WindowHeight-100);
    var ob := RectangleABC.Create(x,y,50,50,clMoneyGreen);
    ob.Number := i;
  end;
  StatusRect := RectangleABC.Create(0,Window.Height-40,Window.Width,40,Color.LightSteelBlue);
  CurrentDigit := 1;
  Mistakes := 0;
  DrawStatusText;
  // ��������� ������������ 
  OnMouseDown := MyMouseDown;
end.