uses MyUnit; // ���������� ������

const Sz = 10;

var a: IntArr;

begin
  Assert(sz<=Size,'������ ������� ������ ���� <='+Size.ToString);
  FillArr(a,Sz);
  writeln('���������� �������: ');
  WriteArr(a,Sz);
  writeln('����������� �������: ',Min(a,Sz));
end.
