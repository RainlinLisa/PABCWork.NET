// ��������� ���������� ����������
var x: integer;

begin
  try 
    writeln('������� ����� (1 - ������ ������� �� 0): ');
    readln(x);
    x := 10 div (x-1);
  except
    on System.FormatException do
      writeln('������ �����');
    on System.DivideByZeroException do
      writeln('������� �� 0');  
  end;
end.
