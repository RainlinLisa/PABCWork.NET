// ���������� �������
// ��������� ���� T �� ����� ����������

procedure Swap<T>(var a,b: T);
begin
  var v := a;
  a := b;
  b := v;
end;

begin
  var a := 2;
  var b := 3;
  writelnFormat('�� Swap a={0}, b={1}',a,b);
  Swap(a,b);
  writelnFormat('����� Swap a={0}, b={1}',a,b);
end.