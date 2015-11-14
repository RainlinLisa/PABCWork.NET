Uses System;

var 
  d: DateTime;
  s: string;

begin
  s := '27.03.2008 9:58:17';
  //������� �������������� ������ � ������ DateTime
  if not DateTime.TryParse(s, d) then
  begin
    Writeln('������ �� �������� �������� ���� � �������');
    Exit;
  end;

  //  �������� ������������ ��������� ���� � ������� ������������ ������
  if DateTime.IsLeapYear(d.Year) then
     Writeln('��� ����������')
  else
     Writeln('��� ������������');
  
  // �������������� ���� � ������� � ��������� �������������
  s := d.ToString;
  Writeln(s);
  
  // �������������� ���� � ��������� �������������
  s := d.ToShortDateString;
  Writeln(s);

  // �������������� ������� � ��������� �������������
  s := d.ToShortTimeString;
  Writeln(s);

end.