// ������������ �������������� ������� ���������
uses GraphABC;

begin
  Window.Title := '�������������� ������� ���������';
  Window.IsFixedSize := True;

  // �������
  Coordinate.Angle := 30; 
  // �������
  Coordinate.Scale := 3;
  // ������ ��������� - � ������ ����
  Coordinate.Origin := Window.Center;

  Brush.Color := clMoneyGreen;
  Ellipse(-50,-20,50,20);
  Line(-70,0,70,0);
  Line(0,-40,0,40);
end.
