// ������������ ���
type Months = (January,February,March,April,May,June,July,August,September,October,November,December);

var m: Months;
  
begin
  m := February;
  writeln(m);
  // ������������� �������� ������������� ���� ����� ����� ���� ������: ����� ����� intellisense ���������� ������ ��������
  m := Months.April;
  writeln('��������� �����: ',m);
  Inc(m);
  writeln('��������� �����: ',m);
  m := Succ(m);  
  writeln('��������� �����: ',m);
  m := Pred(m);  
  writeln('����������� �����: ',m);
  Dec(m);
  writeln('����������� �����: ',m);
  writeln('��� ���������� ����� (��������� - � ����): ',Ord(m));
  // ������ ���
  writeln('����� ����� ������� - ����� �� �������: ',pred(Months.January));
  // ������ ���
  writeln('����� ����� ������� - ����� �� �������: ',succ(Months.December));
end.  