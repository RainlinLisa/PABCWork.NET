// ���� repeat. �������� ������� ���������� ����������� ������ ��������
var A,B: integer;

begin
  write('������� ��� ����� �����: ');
  readln(A,B);
  repeat
    var C := A mod B;
    A := B;
    B := C;
  until B=0;
  write('���������� ����� �������� = ',A);
end.