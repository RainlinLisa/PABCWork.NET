// ������. ������ ������ string
var 
  s: string := '  Pascal__NET  ';
  s1: string := 'NET';
    
begin
  writeln('�������� ������: ''',s,'''');
  s := s.Trim;
  writeln('����� ������ s.Trim: ''',s,'''');
  var p := s.IndexOf(s1); // ���������� - � ����
  writelnFormat('������� ��������� ''{0}'' � ������ ''{1}'' ����� {2}',s1,s,p);
  s := s.Remove(6,2);
  writeln('����� �������� �������� __: ',s);
  s := s.Insert(6,'ABC.');
  writeln('����� ������� ��������� ''ABC.'': ',s);
  writeln('������ ����� ������: ',s.Substring(0,9));
  writeln('��������� ����� ������: ',s.Substring(10,3));
end.