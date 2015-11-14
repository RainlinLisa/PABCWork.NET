program summ_1;
var
e,n:integer;

function calc_summ(n:integer):double;
var
k:double;
f,i:integer;
begin
  f:=1;
  Result:=-1;
  for i:=2 to n do
    begin
    f:=f*i;
    if i mod 2 = 0 then k:=1 
      else k:=-1;
    Result:= Result + k/f;
    end;
end;
// eps = 0.00001
begin 
  writeln('Введите кол-во членов ряда:');
  readln(n);
  writeln('Задайте точность расчётов (кол-во цифр после запятой:');
  readln(e);
  writeln('сумма равна = ', calc_summ(n):10:e);
end.