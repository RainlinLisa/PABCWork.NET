// ���������� �������
// ��������� ���� T �� ����� ����������

function IndexOf<T>(a: array of T; val: T): integer;
begin
  Result := -1;
  for var i:=0 to a.Length-1 do
    if a[i]=val then
    begin
      Result := i;
      exit;
    end;
end;

var a: array of string := ('����', '����', '����', '������');

begin
  var s := '������';
  writelnFormat('������ ������� �� ��������� ''{0}'' ����� {1}',s,IndexOf(a,s));
end.

