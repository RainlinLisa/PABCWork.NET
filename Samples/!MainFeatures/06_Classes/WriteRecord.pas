// ����������� ������������� � ������� � �������
// ���� ������������� ����� ToString, �� �� ���������� ��� ������ ������� ����� ���� ���������� writeln 
type
  SexType = (Male, Female);
  Person = record
    Name: string;
    Age, Weight: integer;
    Sex: SexType;
    constructor (Name: string; Age, Weight: integer; Sex: SexType);
    begin
      Self.Name := Name;
      Self.Age := Age;
      Self.Sex := Sex;
      Self.Weight := Weight;
    end;
    function ToString: string; override;
    begin
      Result := string.Format('���: {0}   �������: {1}   ���: {2}   ���: {3}', Name, Age, Weight, Sex);
    end;
  end;
  
var p: Person := new Person('������',20,70,SexType.Male);

begin
  writeln(p);
end.  
