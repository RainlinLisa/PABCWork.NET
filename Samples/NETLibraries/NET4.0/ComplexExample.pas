// ������������� ����������� �����
{$reference 'System.Numerics.dll'}
uses System.Numerics;

begin
  var a := new Complex(0,1);
  writeln('������ �������: ', a);
  
  var b := Complex.Sqrt(a);
  writeln('������� ������ �� ������ �������: ', b);
  
  var c := a*a;
  writeln('������� ������ �������: ', c);
  
  var d := new Complex(1,2);
  writelnFormat('������ {0} ����� {1}', d,d.Magnitude);
end.