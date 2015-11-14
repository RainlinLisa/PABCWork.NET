program text_1;
var
  s:string;
  i:integer;
  
function proverka_slov(s:string):string;
var
i, j:integer;
begin
  i:=2;
  j:=1;
  Result:=s[1];
  if s[i]<>' ' then
    while ord(s[i]) <> ord(Result[j]) do
      begin
        Result:=Result+s[i];
        s[i]:=s[i+1];
        j:=j+1;
      end
  else 
    begin
    Result:=Result+' ';
    s[i]:=s[i+1];
    end;
end;

begin
  //writeln('¬ведите строку');
  //readln(s);
  s:='aljgrljr ljgdg jllj.';
  //while s[i]<>'.' do proverka_slov(s);
  writeln(proverka_slov(s));
end.
  
