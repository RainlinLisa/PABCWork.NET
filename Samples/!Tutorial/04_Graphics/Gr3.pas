// �������. �������� ����� � ����
uses GraphABC;

begin
  Window.Title := '�������� ����� � ����';
  Pen.Color := Color.Red;
  Pen.Width := 3;
  Pen.Style := psDashDot;
  Brush.Style := bsHatch;
  Brush.Color := Color.Green;
  Brush.Hatch := bhDiagonalBrick;
  Brush.HatchBackgroundColor := Color.Bisque;
  Rectangle(20, 20, Window.Width - 20, Window.Height - 20);
end.