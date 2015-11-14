// �������� (properties)
type 
  /// ����� �������
  Person = class
  private
    nm: string;
    ag: integer;
    procedure SetAge(a: integer); // ��������� ������� � �������� ������������� ������ � ��������� ������
    begin
      if a<0 then // ����� ���������� �������� �������� �� ����� ������� �������������� �������� 
        a := 0;   // � ��������������� �������� ��������, ���� ������������� ����������
      ag := a;  
    end;
  public
    constructor (n: string; a: integer);
    begin
      nm := n; ag := a;
    end;
    /// ��� �������
    property Name: string read nm; // �������� Name �������� ������ �� ������ � ���������� �������� ���� nm
    /// ������� �������
    property Age: integer read ag write SetAge;
    procedure Print;
    begin
      writeln('���: ',nm,'  �������: ',ag);
    end;
  end;

var p: Person := new Person('������', 20);

begin
  writeln('���: ',p.Name); // ������ Name ������, ������ - ������ �� ������
  p.Age := -1; // ������� ��������� �������� �� ������������� �������� �������� � �������������: ������� ���������� = 0
  writeln('�������: ',p.Age);
end.