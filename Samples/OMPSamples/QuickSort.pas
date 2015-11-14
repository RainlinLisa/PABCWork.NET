//������������ ������������� ������������ ������ �� ������� ������� ����������
var
  a: array of integer;

var
  b: array of integer;         

// Partition - ���������� A[l]..A[r] �� ����� A[l]..A[q] <= A[q+1]..A[r]
function Partition(a: array of integer; l, r: integer): integer;
begin
  var i := l - 1;
  var j := r + 1;
  var x := A[l];
  while True do
  begin
    repeat
      i += 1;
    until A[i] >= x;
    repeat
      j -= 1;
    until A[j] <= x;
    if i < j then
      Swap(A[i], A[j])
        else
    begin
      Result := j;
      exit;
    end;
  end;
end;

 // ������������  c��������� ������
procedure Sort(A: array of integer; l, r: integer);
begin
  if l >= r then 
    exit;
  var j := Partition(A, l, r);
      {$omp parallel sections}
  begin
    Sort(A, l, j);
    Sort(A, j + 1, r);
  end;
end;
// ������������ ����������   
procedure QuickSortParrallel(A: array of integer);
begin
  Sort(A, 0, a.Length - 1)
end;

//����������������  ���������� ������
procedure SortSeq(a: array of integer; l, r: integer);
begin
  if l >= r then 
    exit;
  var j := Partition(A, l, r);
  SortSeq(A, l, j);
  SortSeq(A, j + 1, r);
end;
//���������������� ����������
procedure QuickSortSeq(A: array of integer);
begin
  SortSeq(A, 0, a.Length - 1)
end;
 //���������� �������� ������� ���������� ��� ����� ����������
procedure FillRandArr(A, B: array of integer);
begin
  Randomize;
  for var i := 0 to A.Length - 1 do
  begin
    a[i] := Random(1000);
    b[i] := a[i];
  end;
end;
 //����� �������
procedure printArr(A: array of integer);
begin
  Randomize;
  for var i := 0 to A.Length - 1 do
    writeln(a[i]);
end;

begin
  
  SetLength(a, 10000000);
  SetLength(b, 10000000);
  
  FillRandArr(a, b);
  var m1 := Milliseconds;
  QuickSortSeq(B);
  writeln('���������������� ����������: ', Milliseconds - m1, 'ms');
  
  var m0 := Milliseconds;
  QuickSortParrallel(a);
  writeln('������������ ����������: ', Milliseconds - m0, 'ms');
  
end.