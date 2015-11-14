program ozenki;

type
ozenki_studenta=record
            familiya:string;
            massiv_ozenok:array[1..4] of integer;
end;

type_gruppa=array[1..10] of ozenki_studenta;
srednee=array[1..4] of real;

var
srednee_pdedmety:srednee;
gruppa:type_gruppa;
dok:text;
avg_matematika, avg_fizika, avg_informatika, avg_programmirovanie:real;
i,k,j,v:integer;
s:string;
max, min:real;

begin
assign(dok,'C:\Users\rainlin\Desktop\учеба\Контрольные\Программирование\prog_students4.txt');
reset(dok);
i:=-1;
repeat
readln(dok,s);
gruppa[i+2].familiya:=s;
//writeln(s);
i:=i+1;
until s='';

for k:=1 to i do
for j:=1 to 4 do
  read(dok,gruppa[k].massiv_ozenok[j]);
  
avg_matematika:=0;

for k:=1 to i do
begin
  writeln(gruppa[k].familiya, gruppa[k].massiv_ozenok);
   for v:=1 to 4 do
  srednee_pdedmety[v]:=srednee_pdedmety[v] + gruppa[k].massiv_ozenok[v];
end;
//avg_matematika:=avg_matematika/i;
max:=srednee_pdedmety[1]/i;
min:=srednee_pdedmety[1]/i;
for v:=1 to 4 do
begin
srednee_pdedmety[v]:=srednee_pdedmety[v]/i;
if  max < srednee_pdedmety[v] then
  max:=srednee_pdedmety[v];
if min > srednee_pdedmety[v] then
  min:=srednee_pdedmety[v];
end;
writeln(srednee_pdedmety);
writeln(min, ' ' , max);
close(dok);

end.