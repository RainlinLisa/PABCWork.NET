// ������ - ��� ������ ����������� �����, �������� �� ���������
// � ����� ������ ����� ���������� ����������� ������, ������ ����� Stamp.

// ����� ������ ��������������
uses GraphABC;

type 
  RectangleStamp = class
    x,y,w,h: integer;
    constructor (xx,yy,ww,hh: integer);
    begin
      x := xx; y := yy;
      w := ww; h := hh;
    end;
    procedure Stamp;
    begin
      Rectangle(x,y,x+w,y+h);
    end;
  end;

begin
  var r := new RectangleStamp(30,30,50,50);
  r.Stamp;
  for var i:=1 to 10 do
  begin
    r.x := r.x + r.w +5;
    r.Stamp;
  end;
end. 