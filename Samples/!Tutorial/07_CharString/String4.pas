// ������ ������������� �����. ����� �� ����� ���� ������ 255
var 
  s: string[9];
  s1: shortstring; // shortstring = string[255]
  slong: string;
    
begin
  slong := 'PascalABC.NET';
  writeln('C����� ������������ �����: ',slong);
  s := slong;
  writeln('C����� ������������� ����� ����������: ',s);
end.