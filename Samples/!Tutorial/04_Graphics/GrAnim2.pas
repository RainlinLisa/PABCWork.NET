// �������. ������������� LockDrawing-Redraw. �������� �����������
uses GraphABC;

begin
  Window.Title := '�������� ��� ��������';
  var y := 200;
  Brush.Color := clGreen;
  // ��������� ��������� � ����
  LockDrawing;
  for var x := 70 to 500 do
  begin
    Window.Clear(clWhite);    
    Circle(x,y,50);
    // �������������� ���� �� ����������� ������
    Redraw;
    Sleep(3);
  end;
end.