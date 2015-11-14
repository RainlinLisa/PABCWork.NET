//��������� "����� ���������". ���� � midletPascal

uses GraphABC;
 
 type
 // ��������� ���-������� ������
   TStar = record
     X, Y, Z : real; // ��������� � ������������
   end;

 const
   MAX_STARS = 1000;        // ���-�� ��������
   SPEED = 200;             // ��������, � ��������/���

 var
   i     : Integer;
 // ���� �������� :)  
   Stars : array [1..MAX_STARS] of TStar;
 // ������ � ������ �������
   scr_W : Integer;
   scr_H : Integer;
 // �����
   time, dt : Integer;

 // ������ ������� �������� (i), ����� (c)
   procedure SetPix(c: Integer);
   var
     sx, sy : Integer;
   begin
   // ������ ��������, ���������� 3D ����� �� 2D ���������� �������
   try
     sx := trunc(scr_W / 2 + Stars[i].X * 200 / (Stars[i].Z + 200));
     sy := trunc(scr_H / 2 - Stars[i].Y * 200 / (Stars[i].Z + 200));
     except
     end;
     
     try
      SetPixel(sx, sy, Color.FromArgb(c, c, c));
     except
     end;
   end;

 begin
   MaximizeWindow();
   scr_W := Window.Width;  
   scr_H := Window.Height;

 //��������� ������� ��������� ��������
   randomize;
   for i := 1 to MAX_STARS do
   begin
     Stars[i].X := random(scr_W * 4) - scr_W * 2;
     Stars[i].Y := random(scr_H * 4) - scr_H * 2;
     Stars[i].Z := random(1900);
   end;
   
 // ������� ����������� ������� (������ ����)  
   ClearWindow(Color.Black); 
   
   time := Milliseconds;
 // ������� ���� ���������
   repeat
     scr_W := Window.Width;  
     scr_H := Window.Height;
     dt   := Milliseconds - time;  // ������� �� ������, � ������� ���������
     time := Milliseconds;         // �������� �����
     for i := 1 to MAX_STARS do
       begin
     // �������� �������� � ����������� �����
       SetPix(0);
     // �������� � ������� � ����������� ���������� � ��������� ��������� �������
       Stars[i].Z := Stars[i].Z - SPEED * dt/1000;
     // ���� ������ "�������" �� ������� ������ - ���������� � �����
       if Stars[i].Z <= -200 then
       begin
         Stars[i].X := random(scr_W * 4) - scr_W * 2;
         Stars[i].Y := random(scr_H * 4) - scr_H * 2;
         Stars[i].Z := 1900; // ���������� ������ ������ ����� :)
       end;
     // ������ �������� � ����� ��������� (���� ������� �� Z ����������) 
       SetPix(trunc(255 - 255 * (Stars[i].Z + 200) / 2100));
     end;
     sleep(10);
   until false;
 end.