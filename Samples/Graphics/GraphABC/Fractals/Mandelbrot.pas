// ������������ ����������� �������. ��������� ������������
// ��� ������ ����� ����������� ��������� z=(x,y) ��������� ������������ ������� z=z^2+c, c=(cx,cy)
// ������� ���������� �������� i �� ��� ��� ���� �� ���������� ������� |x|>max � |y|>max
// ����� ����� ������ ����� x,y � ������������� �������� �����, ���������������� i 
uses GraphABC,Utils;

const
  max = 10;
  coef1 = 0.5;
  coef2 = 0.88;
  scalex = 0.0035;
  scaley = 0.0035;
  dx = 430;
  dy = 300;

begin
  Window.Title := '��������: ��������� ������������';
  SetWindowSize(600,600);
  CenterWindow;
  for var ix:=0 to Window.Width-1 do
  for var iy:=0 to Window.Height-1 do
  begin
    var x := 0.0;
    var y := 0.0;
    var cx := scalex * (ix - dx);
    var cy := scaley * (iy - dy);
    var i := 1;
    while i<255 do
    begin
      var x1 := x*x-y*y+cx;
      var y1 := 2*x*y+cy;
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

