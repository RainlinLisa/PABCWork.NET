var s1,s2: string;

begin
  // ����������� ����� ������
  s1 := 'ABCDEFGH';
  Writeln(s1.Length);

  // ��������� ����� ��� ����� �������� ��������
  s1 := 'AAA';
  s2 := 'aaa';
  if String.Compare(s1, s2, {ignoreCase - ��� ����� ��������} true) = 0 then
    Writeln('������ ��������� � ��������� �� �������� ����');
  
  // ����������� ��������� ��������
  s1 := 'Long string';
  s2 := 'string';
  if s1.EndsWith(s2) then
    Writeln('� ����� ������ s1 ���������� ���������, ����������� � s2');
    
  // ����� ������� ��������� ��������� � ������
  Writeln(s1.IndexOf(s2));
    
  // ���������� ��������
  s1 := 'ABCDEFGH';
  s2 := s1.Substring( {���������_������� = } 3);
  Writeln(s2);
  
  s2 := s1.Substring(3, {�����_��������� = } 2);
  Writeln(s2);
end.