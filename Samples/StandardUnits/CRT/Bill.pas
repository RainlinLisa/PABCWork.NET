// ��������� ������ �� ������. ���������� �����
// ��� ������� ��������� ����������� Shift+F9 !!!
uses CRT;

const 
// ������ ����
  w = 80; 
// ������ ����
  h = 24;

var
/// ���������� ������ 
  ax,ay: integer;
/// ������ ����������� ������
  vx,vy: integer;
/// ������ ������ ����  
  a: array [1..w,1..h] of char;

/// ������� ������� a
procedure CleanA;
begin
  for var j := 1 to h do
  for var i := 1 to w do
    A[i,j] := ' '
end;

/// �������� �������������� ����� 
procedure HorizWall(x,y,L: integer);
begin
  for var i := x to x+L-1 do
    A[i,y] := '*'
end;

/// �������� ������������ ����� 
procedure VertWall(x,y,L: integer);
begin
  for var j := y to y+L-1 do
    A[x,j] := '*'
end;

/// ���������� ���� ������� 
procedure Fill;
begin
  CleanA;
  HorizWall(1,1,w);
  HorizWall(1,h,w);
  VertWall(1,1,h);
  VertWall(w,1,h);

  HorizWall(49,9,31);
  HorizWall(49,14,31);
end;

/// ����������� ������ 
procedure DrawScreen;
begin
  TextColor(White);
  ClrScr;
  for var j := 1 to h do
  for var i := 1 to w do
    write(A[i,j])
end;

/// ���������� True, ���� �� ���� ������ ����������� 
function FilledInFront: boolean;
begin
  Result := (A[ax+vx,ay]<>' ') or (A[ax,ay+vy]<>' ') or (A[ax+vx,ay+vy]<>' ')
end;

/// ������ ����������� ������
procedure ChangeDirection;
begin
  if A[ax+vx,ay]<>' ' then 
    vx := -vx;
  if A[ax,ay+vy]<>' ' then 
    vy := -vy;
  if (A[ax+vx,ay]=' ') and (A[ax,ay+vy]=' ') and (A[ax+vx,ay+vy]<>' ') then
  begin
    vx := -vx;
    vy := -vy
  end;
  Sleep(10);
end;

/// ������ �����
procedure ShowBall;
begin
  GotoXY(ax,ay);
  write('B');
end;

/// ������� �����
procedure HideBall;
begin
  GotoXY(ax,ay);
  write(' ');
end;

/// ������������� ������ �������� ������
procedure SetBallCoords(x,y: integer);
begin
  ax := x;
  ay := y
end;

/// ������������� ���������� ������
procedure SetBallVeloc(vx0,vy0: integer);
begin
  vx := vx0;
  vy := vy0
end;

/// ���������� ����� � ������� (x,y)
procedure MoveTo(x,y: integer);
begin
  HideBall;
  SetBallCoords(x,y);
  ShowBall
end;

/// ���������� ����� �� ������ (dx,dy)
procedure MoveOn(dx,dy: integer);
begin
  MoveTo(ax+dx,ay+dy);
end;

BEGIN
  SetWindowTitle('�������� (���������� �� CRT)');
  HideCursor;

  Fill;
  DrawScreen;

  SetBallCoords(70,13);
  SetBallVeloc(1,1);
  TextColor(Yellow);
  ShowBall;

  repeat
    Delay(20);
    if FilledInFront then 
      ChangeDirection;
    MoveOn(vx,vy);
  until KeyPressed;
END.
