uses ABCObjects,GraphABC;

const 
/// ������ �� ��� x
  zx = 100;
/// ������ �� ��� y
  zy = 50;

begin
  Window.IsFixedSize := True;
  Window.Title := '����������';
  var r := new RoundRectABC(zx,zy,Window.Width-2*zx,Window.Height-2*zy,100,clMoneyGreen);
  r.BorderWidth := 5;
  r.BorderColor := clGreen;
  for var i:=1 to 1000 do
  begin
    r.RealNumber := i/10;
    Sleep(100);
  end;
end.

