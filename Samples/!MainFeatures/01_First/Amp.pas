// ������ ������������ ������������� ������ & ��� ������ �������� ��������� �����
var 
  &begin,&end: integer;
begin
  &begin := 1;
  &end := 2;
  var t: System.Type := &begin.GetType; // � System.Type ������������ & �� ����
  write(&begin,' ',&end,' ',t);
end.