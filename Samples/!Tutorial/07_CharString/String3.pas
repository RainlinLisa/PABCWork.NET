// ������. ������ ����� ����� ������������ �����
var s: string;
    
begin
  s := 'abcdefghijklmnopqrstuvwxyz';
  s := s + Uppercase(s);
  s += s; 
  s += s; 
  s += s;
  writeln('����� ������ = ',s.Length);
  writeln('C�����: ',s);
end.