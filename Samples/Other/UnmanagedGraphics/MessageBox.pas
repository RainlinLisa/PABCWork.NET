function MessageBox(h:integer;m,c:string;t:integer):integer;
external 'User32.dll' name 'MessageBox';

begin
  MessageBox(0,'������!','���������',0);
end.