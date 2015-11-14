// ��������� exit ������ �� ������������
const n=10;

type IntArr = array [1..n] of integer;

procedure FillArrByRandom(var a: IntArr; n: integer);
begin
  for var i:=1 to n do
    a[i] := Random(10);
end;

procedure PrintArr(const a: IntArr; n: integer);
begin
  foreach x: integer in a do
    write(x,' ');
  writeln;  
end;

function IndexOf(const a: IntArr; n: integer; k: integer): integer;
begin
  Result := 0;
  for var i := 1 to n do
    if a[i]=k then
    begin
      Result := i;
      exit; // ����� �� ���������
    end;  
end;

var a: IntArr;

begin
  FillArrByRandom(a,n);
  writeln('��������� ������ �����: ');
  PrintArr(a,n);
  
  var ind := IndexOf(a,n,7);
  if ind>0 then
    writeln('������ ������� �������� 7 ����� ', ind)
  else writeln('������� 7 �����������');
end.