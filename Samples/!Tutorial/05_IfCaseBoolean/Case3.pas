// �������� ������
var c: char;

begin
  writeln('������� ������: ');
  readln(c);
  case c of
    '0'..'9': writeln('��� �����');
    'a'..'z','A'..'Z': writeln('��� ���������� �����');
    '�'..'�','�'..'�': writeln('��� ������� �����');
  end;
end.