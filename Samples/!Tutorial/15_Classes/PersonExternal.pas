// �������� ������� ��� ���������� ������
// ��������: ��������� ����� �����
// ���� ����� ������ � ������, �� ���������� ������� ���������� � ������ ���������� ������
type 
  Person = class
  private
    name: string;
    age: integer;
  public
    constructor (n: string; a: integer);
    procedure Print;
  end;

//----------------- Person -------------------
constructor Person.Create(n: string; a: integer);
begin
  name := n; age := a;
end;

procedure Person.Print;
begin
  writeln('���: ',name,'  �������: ',age);
end;

var p: Person;

begin
  p := new Person('������',20);
  p.Print;
end.