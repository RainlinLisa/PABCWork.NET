//��������� "��������". ���� � midletPascal :)

uses
  GraphABC;

const
  S = 14; // ���-�� �������
  N = 18;  // ���-�� ������� � ������ �� ���
  W = 2; //������ �������

var
  i, j: Integer;
  x, y: Real;
  tx, ty: Real;
  k, d: Real;
  
  // ���� �������� ������� ������������ ����-�����
  a: array [1..N] of Real;
  
  // ����� ������ �����
  len: Real;

begin
  Pen.Width := W;
  SetWindowSize(320, 320);
  SetWindowTitle('��������');
  
  if Window.Width > Window.Height then
    len := Window.Height / 1.8 / N
  else
    len := Window.Width / 1.8 / N;
  k := random(360) * pi / 180;
  d := pi * 2 / S;
  
  var k1 := 1;
  
  // ������� ����
  repeat
    
    if Window.Width > Window.Height then
      len := Window.Height / 1.8 / N
    else
      len := Window.Width / 1.8 / N;
    
    LockDrawing(); //��������� ���������(��� �����������)
    ClearWindow(ClBlack); // ������� ��
    
    // ������ ���������� ��������
    if random(50) = 0 then
      k := random(360) * pi / 180;
    
    // ������� ���� �������
    a[1] := a[1] + sin(k) / 15;

    // ������������ ����� ����� ����������
    for i := 2 to N do 
      a[i] := a[i] + (a[i - 1] - a[i]) * 0.1;
    for j := 0 to S - 1 do
    begin
      x := 0.5 * Window.Width;
      y := 0.5 * Window.Height;
      for i := 2 to N do 
      begin
        SetPenColor(Color.FromArgb(255, trunc(255 - 255 * i / N), 255));
        
        // ������� �������� ������������� :)           
        tx := x + cos(j * d + a[i]) * len;
        ty := y + sin(j * d + a[i]) * len;
        Line(trunc(x), trunc(y), trunc(tx), trunc(ty));
        x  := tx;
        y  := ty;
      end;
    end;
    Redraw(); //���������� �����������

    k1 += 1;
    SetWindowTitle('��������( �����. FPS ' + Format('{0,5:f2}',k1/Milliseconds*1000)+')');
    
    sleep(5);
  until false;
  
end.