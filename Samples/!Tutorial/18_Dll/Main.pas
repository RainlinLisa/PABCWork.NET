// �������� ���������, ������������ ���������� MyLib.dll
// MyLib.pas ������ ���� �������������� ��������������
{$reference 'MyLib.dll'}

var f: Frac;

begin
  writeln('����� ����� 2 � 3 ����� ',add(2,3));
  writeln('MyPi = ',MyPi);
  f := new Frac(2,3);
  f.Print;
end.