// ����������� ������� OrdUnicode ChrUnicode
var 
  i: integer;
  c: char;

begin
  c := '�';
  i := OrdUnicode(c);
  writelnFormat('��� ������� {0} � ��������� Unicode ����� {1}',c,i);
  i := 1046;
  c := ChrUnicode(i);
  writelnFormat('������ � ����� {0} � ��������� Unicode - ��� {1}',i,c);
end.