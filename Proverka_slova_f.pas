program proverka_slova;
var
  ss:string;

  
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

procedure poslovniiVivodSlov(inStr:string);
var
  nenuzhnayaPeremennaya:char;
begin
writeln('вот такое ', inStr);
end;
    
begin
  writeln('Введите слово:');
  readln(ss);
  writeln('Преобразованная строка> ', proverka_odnogo_slova(ss));
  
end.