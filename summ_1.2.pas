program summ_1;
var
e,n:integer;
eps:double;

function calc_summ(eps:double):double;
var
k, m:double;
f,i:integer;
begin

  f:=1;
  m:=0;
  k:=1;
  i:=1;
  while abs(k/f) > eps do
    begin
    f:=f*i;
    if i mod 2 = 0 then k:=1 
      else k:=-1;
    m:= m + k/f;
    inc(i);
    end;
    Result:=m;
end;
// eps = 0.00001
begin 
  writeln('¬ведите необходимую точность:');
  readln(eps);
  eps := power(0.1, eps);
  writeln('сумма равна = ', calc_summ(eps));
end.