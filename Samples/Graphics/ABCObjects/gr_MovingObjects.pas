uses ABCObjects,GraphABC,Utils;

const 
/// ���������� ����������� ��������
  Count = 300;
/// ���� ��������� ��������
  AnimationIsFast = True;
  
/// ���������� ��������� ����������� ������
function NewRandomABC: ObjectABC;
begin
  case Random(3) of
0: Result := new CircleABC(Random(WindowWidth-30)+10,Random(WindowHeight-30)+10,Random(10)+5,clRandom);
1: Result := new RectangleABC(Random(WindowWidth-30)+10,Random(WindowHeight-30)+10,Random(20)+10,Random(20)+10,clRandom);
2: Result := new StarABC(Random(WindowWidth-30)+10,Random(WindowHeight-30)+10,Random(20)+10,Random(10)+5,Random(4)+4,clRandom);
  end;
end;

/// ����������� ����������� ������ � ���������� ��� �� ������
procedure Move(o: ObjectABC);
begin
  o.Move;
  if (o.Left<0) or (o.Left+o.Width>WindowWidth) then
    o.dx := -o.dx;
  if (o.Top<0) or (o.Top+o.Height>WindowHeight) then
    o.dy := -o.dy;
end;

begin
  Window.Title := '���������� �������';
  if AnimationIsFast then
    LockDrawingObjects;
  for var i:=1 to Count do
  begin
    var m: ObjectABC := NewRandomABC;
    repeat
      m.dx := Random(-3,3);
      m.dy := Random(-3,3);
    until (m.dx<>0) and (m.dy<>0);
  end;
  var k := 1;
  while True do
  begin
    for var i:=0 to Objects.Count-1 do
      Move(Objects[i]);
    if AnimationIsFast then
      RedrawObjects;
    k += 1;
    Window.Title := Format('{0,5:f2}',k/Milliseconds*1000)+' ������ � �������';
  end;
end.
