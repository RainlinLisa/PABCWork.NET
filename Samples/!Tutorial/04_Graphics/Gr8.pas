// �������. �����������
uses GraphABC;

begin
  Window.Title := '������������ �����������';
  TextOut(40,20,'�� ������������');
  Pen.Width := 2;
  
  Ellipse(40,60,300,200);
  Line(340,60,600,130);
  Line(600,130,340,200);
  
  SetSmoothingOff;
  TextOut(40,240,'��� �����������');
  Ellipse(40,280,300,420);
  Line(340,280,600,350);
  Line(600,350,340,420);
end.