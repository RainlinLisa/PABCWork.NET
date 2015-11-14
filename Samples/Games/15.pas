// ���� � 15
uses GraphABC,ABCObjects,ABCButtons;

const
/// ������ ����
  n = 4;
/// ������ �����
  sz = 100;
/// ����� ����� �������
  zz = 10;
/// ������ �� ������ � ������� �����
  x0 = 20;
/// ������ �� �������� � ������� �����
  y0 = 20;

var
  p: array [1..n,1..n] of SquareABC;
  digits: array [1..n*n-1] of integer;

  MeshButton: ButtonABC;
  StatusRect: RectangleABC;

  EmptyCellX,EmptyCellY: integer;
  MovesCount: integer;
  EndOfGame: boolean;  // True ���� ��� ����� ����� �� ����� ������

// �������� ������� ��� �����
procedure Swap(var p,p1: SquareABC);
begin
  PABCSystem.Swap(p,p1);
  var i := p.Left;
  p.Left := p1.Left;
  p1.Left := i;
  i := p.Top;
  p.Top := p1.Top;
  p1.Top := i;
end;

// ����������, �������� �� ������ ��������
function Sosedi(x1,y1,x2,y2: integer): boolean;
begin
  Result := (abs(x1-x2)=1) and (y1=y2) or (abs(y1-y2)=1) and (x1=x2)
end;

// ��������� ��������������� ������ ����
procedure FillDigitsArr;
begin
  for var i:=1 to n*n-1 do
    digits[i] := i;
end;

// ���������� ��������������� ������ ����. ���������� ������� ������ ���� ������
procedure MeshDigitsArr;
var x: integer;
begin
  for var i:=1 to n*n-1 do
  begin
    repeat
      x := Random(15)+1;
    until x<>i;
    Swap(digits[i],digits[x]);
  end;
  if n mod 2=0 then
    Swap(digits[1],digits[2]); // ���������� ������� ������ ���� ������
end;

// ��������� ��������� ������ �����. ������ ������ ������ - ����� ����� � ������ 0
procedure Fill15ByDigitsArr;
begin
  Swap(p[EmptyCellY,EmptyCellX],p[n,n]); // ����������� ������ ����� � ������ ������ ����
  EmptyCellX := n;
  EmptyCellY := n;
  var i := 1;
  for var y:=1 to n do
  for var x:=1 to n do
  begin
    if x*y=n*n then exit;
    p[y,x].Number := digits[i];
    i += 1;
  end;
end;

// ���������� ������ �����
procedure Mesh15;
begin
  MeshDigitsArr;
  Fill15ByDigitsArr;
  MovesCount := 0;
  EndOfGame := False;
  StatusRect.Text := '���������� �����: '+IntToStr(MovesCount);
  StatusRect.Color := RGB(200,200,255);
end;

// ������� ������ �����
procedure Create15;
begin
  EmptyCellX := n;
  EmptyCellY := n;
  for var x:=1 to n do
  for var y:=1 to n do
  begin
    p[y,x] := new SquareABC(x0+(x-1)*(sz+zz),y0+(y-1)*(sz+zz),sz,clMoneyGreen);
    p[y,x].BorderColor := clGreen;
    p[y,x].BorderWidth := 2;
    p[y,x].TextScale := 0.7;
  end;
  p[EmptyCellY,EmptyCellX].Color := clWhite;
  p[EmptyCellY,EmptyCellX].BorderColor := clWhite;
  FillDigitsArr;
  MeshDigitsArr;
  Fill15ByDigitsArr;
end;

// ���������, ��� �� ����� ����� �� ����� ������
function IsSolution: boolean;
var x,y,i: integer;
begin
  Result:=True;
  i:=1;
  for y:=1 to n do
  for x:=1 to n do
  begin
    if p[y,x].Number<>i then
    begin
      Result:=False;
      break;
    end;
    Inc(i);
    if i=n*n then i:=0;
  end;
end;

procedure MouseDown(x,y,mb: integer);
begin
  if EndOfGame then // ���� ��� ����� �� ����� ������, �� �� ����������� �� ���� � ����� ������� ������ "����������"
    exit;
  if ObjectUnderPoint(x,y)=nil then // E��� �� �������� �� �� �������, �� �� ����������� �� ����
    exit;
  var fx := (x-x0) div (sz+zz) + 1; // ��������� ���������� �� ����� ��� ������, �� ������� �� �������� �����
  var fy := (y-y0) div (sz+zz) + 1;
  if (fx>n) or (fy>n) then
    exit;
  if Sosedi(fx,fy,EmptyCellX,EmptyCellY) then // ���� ������ ����������� � ������, �� �������� �� �������
  begin
    Swap(p[EmptyCellY,EmptyCellX],p[fy,fx]);
    EmptyCellX := fx;
    EmptyCellY := fy;
    Inc(MovesCount);
    StatusRect.Text := '���������� �����: ' + IntToStr(MovesCount);
    if IsSolution then
    begin
      StatusRect.Text := '������! ������� �����: ' + IntToStr(MovesCount);
      StatusRect.Color := RGB(255,200,200);
      EndOfGame := True;
    end
  end;
end;

begin
  SetSmoothingOff;
  Window.Title := '���� � 15';
  Window.IsFixedSize := True;
  SetWindowSize(2*x0+(sz+zz)*n-zz,2*y0+(sz+zz)*n-zz+90);
  
  EndOfGame := False;
  Create15;

  MeshButton := ButtonABC.Create((WindowWidth-200) div 2,2*y0+(sz+zz)*n-zz,200,'����������',clLightGray);
  MeshButton.OnClick := Mesh15;
  StatusRect := new RectangleABC(0,WindowHeight-40,WindowWidth,40,RGB(200,200,255));
  StatusRect.TextVisible := True;
  StatusRect.Text := '���������� �����: '+IntToStr(MovesCount);
  StatusRect.BorderWidth := 2;
  StatusRect.BorderColor := RGB(80,80,255);

  MovesCount := 0;

  OnMouseDown := MouseDown;
end.
