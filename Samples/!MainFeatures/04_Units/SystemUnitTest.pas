// ����������� ������ ���� ������� ������ ������ � ������ uses, � ����� � ��������� ������ PABCSystem 
uses System;

begin
  // ��� Random, ������������ � ������������ ���� System, ����������� ��� Random 
  // � ������ PABCSystem, ������� ������ ������������ ������
  var r: Random := new Random();
  writeln(r.Next(10));
  // ������ ������� ����� ������ Random ���������� ���� ��������� ��� ������, � ������� �� ���������
  var i: integer := PABCSystem.Random(10);
  writeln(i);
end.