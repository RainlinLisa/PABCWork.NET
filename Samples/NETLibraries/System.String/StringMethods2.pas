var s1,s2: string;

begin
  // ���������� ��������
  s1 := 'ABCDEFGH';
  s2 := s1.Substring( {���������_������� = } 3);
  Writeln(s2);
  
  s2 := s1.Substring(3, {�����_��������� = } 2);
  Writeln(s2);
  
  // �������, �������� � ������ ��������
  s1 := 'ABCDEFGH';
  s2 := s1.Insert(2, 'xxx');
  Writeln(s2);
  
  s2 := s2.Replace('x', '!');
  Writeln(s2);
  
  s2 := s2.Remove(2, 3);
  Writeln(s2);
  
  s1 := '����� ����� �����';
  s2 := s1.Replace('����', '�����');
  Writeln(s2);
  
  // �������� ���������� �������� � ������ ������
  s1 := '    xxx  xxx    ';
  Writeln('|', s1, '|');
  s1 := s1.Trim;
  Writeln('|', s1, '|');
  
  // ����� �������� ��������
  s1 := '�����';
  s1 := s1.ToUpper;
  Writeln(s1);
end.