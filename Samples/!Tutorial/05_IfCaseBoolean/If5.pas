// ��������� �������� ���������. ��������
var s: string;

begin
  writeln('������� ����� �� ������ (������,�������,����,�������,�����): ');
  readln(s);
  write('�������: ');
  if (s='������') then 
    writeln('�����')
  else if (s='�������') then 
    writeln('������')
  else if (s='����') then 
    writeln('����')
  else if (s='�������') then 
    writeln('����')
  else if (s='�����') then 
    writeln('������')
  else writeln('������ ����� � ������ ���')  
end.