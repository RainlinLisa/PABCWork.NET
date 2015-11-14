program text_rgata;
var
  s:string;
  //sm:string[10];
  i, p:integer;
begin
  s:='hgh,jgfg,jghj,jhhf,hftdd,tddsss,hgfff,ggffgfdf.';
  i:=1;
  p:=1;
  while s[i] <> '.' do 
    begin
      i:=i+1;
      if s[i] = ',' then 
      begin
      p:=p+1;
      end;
    end;
  writeln(p);
end.