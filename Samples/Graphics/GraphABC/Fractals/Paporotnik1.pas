// ������������ ����������� �������. ����������
// ��� ������ ����� ����������� ��������� z=(x,y) ��������� ������������ ������� z=z^2+c, c=(cx,cy)
// ������� ���������� �������� i �� ��� ��� ���� �� ���������� ������� |x|>max � |y|>max
// ����� ����� ������ ����� x,y � ������������� �������� �����, ���������������� i 
uses GraphABC,Utils;

const
  max = 10;
  cx = 0.251;
  cy = 0.95;
  coef1 = 0.5;
  coef2 = 0.88;
 
  scalex = 0.001;
  scaley = 0.001;
  dx = 200;
  dy = 130;

begin
  Window.Title := '��������: ����������';
  SetWindowSize(800,600);
  CenterWindow;
  for var ix:=0 to Window.Width-1 do
  for var iy:=0 to Window.Height-1 do
  begin
    var x := scalex*(ix-dx);
    var y := scaley*(iy-dy);
    var i := 1;
    while i<255 do
    begin
      var x1 := coef1*x*x-coef2*y*y+cx;
      var y1 := x*y+cy;
      x := x1;
      y := y1;
      if (abs(x)>max) and (abs(y)>max) then break;
      i += 1;
    end;
    if i>=255 then SetPixel(ix,iy,clRed)
      else SetPixel(ix,iy,RGB(255,255-i,255-i));
  end;
  writeln('����� ������� = ',Milliseconds/1000,' �');
end.
