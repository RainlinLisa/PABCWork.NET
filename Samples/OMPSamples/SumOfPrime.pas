// ������������ ������ ��������� parallel for c ������ ��������
// �� ������� ���������� �����  ������� �����  ����� ������ n 
// ����������� �����

// �������� �� �������� ����� n
function IsPrime(n:integer):boolean;
begin
  result:=false;
  for var i:integer:=2 to round(sqrt(n)) do
    if n mod i = 0 then
      exit;
  result:=true;    
end;
//���������������� ���������� ����� ������� �����
function SumOfPrimesSeq(n:integer):int64;
begin
  var sum:int64:=0;
  for var i:integer:=2 to n do
    if IsPrime(i) then
      sum:=sum+i;
  result:=sum;
end;
//������������ ���������� ����� ������� �����
function SumOfPrimesPar(n:integer):int64;
begin
  var sum:int64:=0;
  {$omp parallel for reduction(+:sum)}
  for var i:integer:=2 to n do
    if IsPrime(i) then
      sum:=sum+i;
  result:=sum;
end;

const Count = 5000000;

begin
  var t := Milliseconds;
  WriteLn(SumOfPrimesSeq(Count));
  Writeln('Seq time = ', Milliseconds - t);
  
  t := Milliseconds;
  WriteLn(SumOfPrimesPar(Count));
  Writeln('Par time = ', Milliseconds - t);
end.