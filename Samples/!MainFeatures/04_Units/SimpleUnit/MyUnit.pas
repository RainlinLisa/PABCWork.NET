/// ������ ���������� ���������
unit MyUnit; // ��� ������ ������ ��������� � ������ �����

// ��������������� ����������� ������������ ��� ��������� �� ��� ������� ����
/// ���������� ������������ ������� � �������
function Max(a: array of integer): integer;
begin
  Result := integer.MinValue;
  foreach x: integer in a do
    if x>Result then 
      Result := x;
end;

end.
