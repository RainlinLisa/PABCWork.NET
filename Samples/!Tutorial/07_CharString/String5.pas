// ������. ����������� ������������ ������ �� ��������
var 
  s: string := '  Pascal__NET  ';
  s1: string := 'NET';
    
begin
  writeln('�������� ������: ''',s,'''');
  s := Trim(s);
  writeln('����� ������ ������� Trim: ''',s,'''');
  var p := Pos(s1,s);
  writelnFormat('������� ��������� ''{0}'' � ������ ''{1}'' ����� {2}',s1,s,p);
  Delete(s,7,2);
  writeln('����� �������� �������� __: ',s);
  Insert('ABC.',s,7);
  writeln('����� ������� ��������� ''ABC.'': ',s);
  writeln('������ ����� ������: ',Copy(s,1,9));
  writeln('��������� ����� ������: ',Copy(s,11,3));
end.