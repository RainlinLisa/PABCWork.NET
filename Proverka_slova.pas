program proverka_slova;
var m:set of char;
    k, i:byte;
    s, r:string;
begin
  writeln('Введите слово:');
  readln(s);
  m:=[];
  k:=0;
  for i:=1 to length(s) do
  if not(s[i] in m) then
    begin
      k:=k+1;
      r:=r+s[i];
      m:=m+[s[i]];
    end;
  writeln('Преобразованная строка> ', r);
end.