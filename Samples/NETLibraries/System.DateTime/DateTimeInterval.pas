// ������ � ������� System.DateTime
// ���������� ������� ���������� ��������� ����

uses System, PABCSystem;

var dt: DateTime := DateTime.Now;

begin
  // ������ ��������� �����
  var ms := Random(1000);
  Writeln('Sleep','(',ms,')');
  Sleep(ms);
  
  // ���������� � ����������� DateTime.Now
  Writeln((DateTime.Now-dt).TotalMilliseconds,'ms');
end.