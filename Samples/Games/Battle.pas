uses GraphABC;
 
const types = 3;               //����� ����� ��� ����� 1
      rmax = 4;                //������ ���� ���
      CanEat = rmax;           //������������ ���������� ��� ��������
      eps = 0.00001;           //���������� ��� ��������� � ������� real
      epsustupi = 0.1;         //��������� ������� �������� ����� ��������
      strahkraj = 3;           //�� ������� ��� ������ ������ ���� ������, ��� ��������
      ustupi = CanEat*10;      //��������� ������� �������� ����� ��������
      BkColor = clBlack;       //���
      Height = 600;            //������ ������������ ����
      Width = 780;             //������ ������������ ����
      xmin = 10;               //
      ymin = 10;               //����������� � ������������ �������� ���������,
      xmax = Width - 100;      //������� ����� ��������� ����
      ymax = Height - 140;     //

Type
fishtype = class //�������� ����� ����
           c : color;
           public
		CanRazm, MaxKol, Kol, MaxLife, MinFood: integer;
            //����, �����������, ����. ���-��, ������� ���-��, ����. �����,
            //������� ������� ����� ���� ��� �����������
           Speed, See: real;  //���������� �������� � ������ � ��������
           constructor create(ac:color; aCanRazm, aMaxKol, aMaxLife, aMinFood:integer; aSpeed, aSee: real);
             begin
             c:= ac; CanRazm:= aCanRazm; MaxKol:= aMaxKol; Kol:= 1;
             MaxLife:= aMaxLife; MinFood:= aMinFood; Speed:= aSpeed; See:= aSee
             end;
           procedure ShowKol(y: integer); //���������� ������� ���-��
             var s: string;
             begin
             SetFontColor(c);
             TextOut(xmax + 20, y, '      ');
             s := IntToStr(kol);
             TextOut(xmax + 20, y, s);
             end;
           end;

var opisanie: array[0..types] of fishtype; //������ ��� ���� ����

Type
fish = class
       x, y, r, dx0, dy0: real; //������� ����������, ������ � ���������� ���
       tip, life, razm, status, food: integer;
       //razm - ����� � ������� ���������� �����������,
       //status - ��������� - ��������� ��� �����������
       next, prev: fish; //���������� ����������� ������
       constructor Create(ax, ay, ar: real; atip: integer; aprev, anext: fish);
         begin
         x:= ax; y:= ay; r:= ar; tip:= atip; prev:= aprev; next:= anext;
         life:= 0; razm:= 0; dx0:= random; dy0:= random; status:= 1; food:= 0;
         end;
       procedure show;
         begin
         SetPenColor(opisanie[tip].c);
         circle(round(x), round(y), round(r))
         end;
       procedure hide;
         begin
         SetPenColor(BkColor);
         circle(round(x), round(y), round(r))
         end;
       procedure Destroy;
         begin
         hide;
         opisanie[tip].kol:= opisanie[tip].kol - 1;
         opisanie[tip].ShowKol(tip*40 + 20);
         end;
       procedure moveto(dx, dy: real);
         begin
         hide;
         x:= x + dx; y:= y + dy;
         if x > xmax then x:= xmax;
         if x < xmin then x:= xmin;
         if y > ymax then y:= ymax;
         if y < ymin then y:= ymin;
         show
         end;

       procedure MakeDeti(var mama, StartAkula, KonAkula, StartKilka, KonKilka : fish);
       //���������� ���������
         var d: fish;
         begin
         razm:= 0;
         food:= 0;
         d:= fish.create(x, y, r, tip, mama, next);
         next.prev:= d;
         next:= d;
         if mama = KonAkula then KonAkula:= d;
         if mama = KonKilka then KonKilka:= d;
         opisanie[tip].kol:= opisanie[tip].kol + 1;
         opisanie[tip].ShowKol(tip*40 + 20);
         end;

       procedure step(var ribka, StartAkula, KonAkula, StartKilka, KonKilka : fish);
       //����� ��������� ��� ���
         var 
             dx, dy, d, dx2, dy2, dmin: real;
             t, trup, found: fish;
             FoundOhot: boolean;
         begin
         status:= 1; //���������� ���������
         dx:= 0; dy:= 0;
         if tip > 0 then
           begin           //������ ��������� ��� �����
           t:= StartAkula;
           if t<>nil then
             repeat        //���� ���� �������� � ���� ���������
             d:= sqrt((x - t.x)*(x - t.x) + (y - t.y)*(y - t.y));
             if d < opisanie[tip].See then
               begin
               if d < eps then d:= eps;
               dx2:= (x - t.x)/(d*d);
               dy2:= (y - t.y)/(d*d);
               dx:= dx + dx2;
               dy:= dy + dy2;
               status:= 2; //����������� ���������
               end;
             t:= t.next
             until t = KonAkula.next;
           //� ������� �������� �� ����:
           if x - xmin < opisanie[tip].See then dx:= dx + 1/((x - xmin + eps)*strahkraj);
           if xmax - x < opisanie[tip].See then dx:= dx + 1/((x - xmax - eps)*strahkraj);
           if y - ymin < opisanie[tip].See then dy:= dy + 1/((y - ymin + eps)*strahkraj);
           if ymax - y < opisanie[tip].See then dy:= dy + 1/((y - ymax - eps)*strahkraj);
           d:= sqrt(dx*dx + dy*dy);
           if d < eps then
             begin
             dx:= 2*status*random()*opisanie[tip].Speed - status*opisanie[tip].Speed;
             dy:= 2*status*random()*opisanie[tip].Speed - status*opisanie[tip].Speed
             end
                      else
             begin
             dx:= status*opisanie[tip].Speed*dx/d;
             dy:= status*opisanie[tip].Speed*dy/d
             end
           end
                     else {tip = 0}
           begin  //������ ��������� ��� ��������
           dmin:= 11000;
           t:= StartAkula;
           while t<>ribka do //��������� ���� ���� �� ��������
             begin

	     d:= sqrt((x - t.x)*(x - t.x) + (y - t.y)*(y - t.y));
             if (d < dmin) and (abs(dx0 - t.dx0) < epsustupi) and
                (abs(dy0 - t.dy0) < epsustupi) then dmin:= d;
             
		t:= t.next
             end;
           FoundOhot:= dmin < ustupi;
           dmin:= 11000;
           found:= nil;
           t:= StartKilka;
           if (t<>nil) and (life > 100) and not FoundOhot then
             repeat
	       
             d:= sqrt((x - t.x)*(x - t.x) + (y - t.y)*(y - t.y));
             if d < dmin then
               begin
               dmin:= d;
               found:= t         //found - ��������� ������
               end;
             t:= t.next
             until t = KonKilka.next;
           if (found <> nil) and (dmin < opisanie[tip].See) then
             begin
             status:= 2;         //����������� ���������
             dx:= found.x - x;
             dy:= found.y - y;
             if dmin < CanEat + status*opisanie[tip].Speed then
               begin   //��������
               found.next.prev:= found.prev;
               found.prev.next:= found.next;
               if (found = StartKilka) and (found = KonKilka) then
                 begin
                 //StartKilka:= nil;
                 //KonKilka:= nil
                 end;
               if found = StartKilka then
                 StartKilka:= StartKilka.next;
               if found = KonKilka then
                 KonKilka:= KonKilka.prev;
               found.destroy;
		found := nil;
               food:= food + 1
               end
             end
                           else
             if (x <= xmin) or (x >= xmax) or (y <= ymin) or (y >= ymax) then
               begin
               dx:= 2*status*random()*opisanie[tip].Speed - status*opisanie[tip].Speed;
               dy:= 2*status*random()*opisanie[tip].Speed - status*opisanie[tip].Speed
               end
                                                                         else
               begin
               dx:= dx0; dy:= dy0 //������ ����������� ���� - ��������������
               end;
           d:= sqrt(dx*dx + dy*dy);
           if d > eps then
             begin
             dx:= status*opisanie[tip].Speed*dx/d;
             dy:= status*opisanie[tip].Speed*dy/d;
             end
           end;
         //������ ��������� ��� ���� ���
         moveto(dx, dy);
         dx0:= dx; dy0:= dy;
         life:= life + 1; razm:= razm + 1;
         if opisanie[tip].Kol >= opisanie[tip].MaxKol then Razm:= 0;
         if (razm > opisanie[tip].CanRazm) and (food >= opisanie[tip].minfood) then
           MakeDeti(ribka, StartAkula, KonAkula, StartKilka, KonKilka);
           if life > opisanie[tip].MaxLife then  //������ �� ��������
             begin
             trup:= ribka; ribka:= ribka.prev;
             trup.next.prev:= trup.prev;
             trup.prev.next:= trup.next;
             if trup = StartKilka then
               StartKilka:= StartKilka.next;
             if trup = KonKilka then
               KonKilka:= KonKilka.prev;
             if trup = StartAkula then
               StartAkula:= StartAkula.next;
             if trup = KonAkula then
               KonAkula:= KonAkula.prev;
             if trup = trup.next then ribka:= nil;
             if trup <> nil then 
             trup.destroy;
	     trup := nil;
             end
         end;

       end;

function getAllCount:integer;
var i,c:integer;
begin
  c:=0;
  for i:=0 to types do
    c:=c+opisanie[i].Kol;
  getAllCount:=c;
end;

var i: integer;
    p, q, StartAkula, StartKilka, KonAkula, KonKilka, tek: fish;

begin
  SetSmoothing(False);
  SetWindowSize(Width, Height);
  SetWindowLeft(200);
  SetWindowTop(50);
  SetWindowCaption('����� �� �����');
  SetFontSize(7);
  SetFontName('Arial');
  SetBrushColor(BkColor);
  FillRectangle(0, 0, Width, Height);
  SetFontColor(clWhite);
  TextOut(10, ymax + 20, '����� ��������� - ������ �.�.          e-mail: ssyy@yandex.ru');
  TextOut(10, ymax + 20+1*18, '��������� ���������� ��������� ���������� ���� ���. ������ - ���������� ��� � �������');
  TextOut(10, ymax + 20+2*18, '������ �������. ������� ��������� � ���� ���������, ����� ������ �� ��� �����.');
  TextOut(10, ymax + 20+3*18, '�� ���������: ������� - �������, ������� ����� ��� �� ������ ����, �� ��������,');
  TextOut(10, ymax + 20+4*18, '���� �� �����; ����� - ������, ����� ���������, �� ������� ���� ��������; ������ - ������,');
  TextOut(10, ymax + 20+5*18, '������� �����, �� �������� ���������; ������ - ����� ������� ����� �����, �� ������ ����.');
  SetFontSize(12);
  StartAkula:= nil;
  StartKilka:= nil;
  KonAkula:= nil;
  KonKilka:= nil;
  
  //c - ����.
  //CanRazm - �����������  ����������  �����  ��������  ������  ����  �����  �����
  //  �  �����������������  �������������.
  //MaxKol - �����������  ����������  ����������  ���  �������  ����.
  //Kol - ����������  ���  �������  ����  �  �������  ������  �������.
  //MaxLife - ������������  �����������������  �����.
  //  �����  ����,  ���  ����  �������  ������  �����,  ���  ���  �����,  ���  �������.
  //MinFood - �����������  ����������  ���������  �����,  �����������  ��� �����������
  //  (������  ���  ��������;  ���  �����  ���  ����������  �������  ��  -1).
  //Speed - ���������� ��������.  ������������  ��������  ����  �  2  ����  ������  �����  �����.
  //See - ������  ������ - ���  ������  �����  ����.
  
                              //c,        CanRazm, MaxKol, MaxLife, MinFood, Speed,   See
  opisanie[3]:= fishtype.create(clYellow, 300,     15,     1500,    -1,      0.99,    50);
  opisanie[2]:= fishtype.create(clGreen,  150,     50,     1500,    -1,      0.9,     50);
  opisanie[1]:= fishtype.create(clBlue,   30,      50,     500,     -1,      0.7,     35);
  opisanie[0]:= fishtype.create(clRed,    1000,    40,     5000,     1,       1,     500);
  SetPenColor(clWhite);
  rectangle(round(xmin - rmax - 1), round(ymin - rmax - 1),
            round(xmax + rmax + 1), round(ymax + rmax + 1));
  //������ ����� ��������� �������������� ������
  q:= fish.create(xmin + 10, ymax - 10, rmax, 0, nil, nil);
  p:= fish.create(xmin + 10, ymin + 10, rmax, 1, q, q);
  q.next:= p; q.prev:= p;
  StartAkula:= q; KonAkula:= q;
  StartKilka:= p; KonKilka:= p;
  p:= fish.create(xmax - 10, ymin + 10, rmax, 2, KonKilka, StartAkula);
  StartAkula.prev:= p;
  KonKilka.next:= p; KonKilka:= p;
  p:= fish.create(xmax - 10, ymax - 10, rmax, 3, KonKilka, StartAkula);
  StartAkula.prev:= p;
  KonKilka.next:= p; KonKilka:= p;
  for i:= 0 to types do opisanie[i].ShowKol(i*40 + 20);
  //� ��� ����� �� �������, ���� ���� ���-�� ���.
  tek:= StartKilka;
  //i:=0;c:=getallcount;LockDrawing;
  repeat
   tek:= tek.next;
   tek.step(tek, StartAkula, KonAkula, StartKilka, KonKilka);
   {i:=i+1;
   if i>=c then begin
     i:=0;c:=getallcount;
     Redraw;
   end;}
  until (tek = nil);

end.
