// ����������� finally
// ������ finally ����������� ���������� �� ����, ��������� ���������� ��� ���
var x: integer := 0;

begin
  try 
    if Random(2)=0 then
      x := 10 div x;
    writeln('���������� ������������');   
  finally
    writeln('��������� ������ finally'); 
  end;
  // ���� ��������� ����������, �� ���� �������� �� �����������
  writeln('����� ������ finally'); 
end.
