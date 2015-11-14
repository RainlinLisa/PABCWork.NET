program proverka_slova;
var
  ss:string;
  text_file:text;

//-------------------------------------------------  
function proverka_odnogo_slova(inputStr:string):string;
var chars:set of char;
    indexStroki:byte;
begin
  chars:=[];
  for indexStroki:=1 to length(inputStr) do
  if not(inputStr[indexStroki] in chars) then
    begin
      Result:=Result+inputStr[indexStroki];
      chars:=chars+[inputStr[indexStroki]];
    end;
end;
//------------------------------------------------- 
function poslovniiVivodSlov(inStr:string):string;
var
  r:string;
  i:integer;
begin

  for i:=1 to length(inStr) do 
    begin
      if (inStr[i] = ' ') or (inStr[i] = '.') then 
      begin
      r:=proverka_odnogo_slova(r);
      write(r+inStr[i]);
      Result:=Result + r+inStr[i];
      r:='';
      end 
      else
      r:=r+inStr[i];
end;

end;
//-------------------------------------------------    
begin
  writeln('Введите слово:');
  readln(ss);
  assign(text_file, 'c:\work\PABCWork.NET\text_file.txt');
  rewrite(text_file);
  writeln('Строка-результат: ');
  writeln(text_file, 'Строка-результат: ');
  writeln(text_file, poslovniiVivodSlov(ss));
  close(text_file);
end.