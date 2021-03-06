// ���������� ��������. ����� "�����"
type 
  Frac = record
  private
    n,m: integer;
  public
    constructor (n,m: integer);
    begin
      Self.n := n; 
      Self.m := m;
    end;
    class function operator+(f1,f2: Frac): Frac; // �������� ������������� ��� ��������� �������
    begin
      Result.n := f1.n*f2.m+f1.m*f2.n;
      Result.m := f1.n*f1.m;
    end;
    class function operator-(f1,f2: Frac): Frac;
    begin
      Result.n := f1.n*f2.m-f1.m*f2.n;
      Result.m := f1.n*f1.m;
    end;
    function ToString: string; override; // ��������� �������������� ��� ������� ����� �������� ���������� ���� Frac � write
    begin
      Result := Format('{0}/{1}',n,m);
    end;
  end;

var f,f1: Frac;

begin
  f := new Frac(2,3);
  f1 := new Frac(1,2);
  writelnFormat('{0} + {1} = {2} ',f,f1,f+f1);
  // f+f1 ����������� ������������ � Frac.operator+(f,f1)
  writelnFormat('{0} - {1} = {2} ',f,f1,f-f1);
end.