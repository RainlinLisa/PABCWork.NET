// ����������� ������� Ord, Chr, OrdUnicode, ChrUnicode
var 
  c: char;
  i: integer;

begin
  writeln('sizeof(char) = ',sizeof(char));
  writeln;
  c := '�';
  i := Ord(c);
  writelnFormat('��� ������� {0} � ��������� Windows ����� {1}',c,i);
  c := Chr(i);
  writelnFormat('������ � ����� {0} � ��������� Windows - ��� {1}',i,c);
  writeln;
  i := OrdUnicode(c);
  writelnFormat('��� ������� {0} � ��������� Unicode ����� {1}',c,i);
  c := ChrUnicode(i);
  writelnFormat('������ � ����� {0} � ��������� Unicode - ��� {1}',i,c);
end.