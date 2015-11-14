// �������� ������� � ��� ���������
uses GraphABC,ABCSprites,ABCObjects,Events;

var s: SpriteABC;

begin
  Window.Title := '�������� �������';
  SetWindowSize(400,300);
  CenterWindow;
  
  // �������� ������� � ���������� � ���� ������
  s := new SpriteABC(150,100,'SpriteFrames\multi1.bmp');
  s.Add('SpriteFrames\multi2.bmp');
  s.Add('SpriteFrames\multi3.bmp');
  s.Add('SpriteFrames\multi2.bmp');
  s.Add('SpriteFrames\multi4.bmp');
  s.Add('SpriteFrames\multi5.bmp');
  
  // ���������� ��������� � �������
  s.AddState('fly',4); // ������ - 4 �����
  s.AddState('stand',1); // ������ - 1 ����
  s.AddState('sit',1); // ������ - 1 ����
  
  // ������� �������� ������-�������� (1..10)
  s.Speed := 9;
  
  // ���������� ������� � "�������" ������� � �������� ��������������� ����� �������
  s.SaveWithInfo('spr.png');
end.