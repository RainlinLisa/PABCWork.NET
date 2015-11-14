// ����������� ������������� ����������� (���������) �������������
type 
  Person = class
  private
    class arr: array of Person; // ��������� ����. ������� �� � ���������� ������, � � �������. 
    name: string;
    age: integer;
  public
    class constructor; // ����������� ������. ���������� �� �������� ������� ������� ������ � �� ������ ������ ���������� ������
    begin
      writeln('  ������ ��������� �����������');
      SetLength(arr,3);
      arr[0] := new Person('������',20);
      arr[1] := new Person('�������',19);
      arr[2] := new Person('�����',35);
    end;
    constructor (n: string; a: integer);
    begin
      name := n;
      age := a;
    end;
    function ToString: string; override;
    begin
      Result := Format('���: {0}   �������: {1}',name,age);      
    end;
    class function RandomPerson: Person; // ��������� �����. ����� ���������� ������ � ��������� �����
    begin
      Result := arr[Random(3)];
    end;
  end;
  
begin
  writeln('��������� �������');
  for var i:=1 to 5 do
    writeln(Person.RandomPerson); // ����� ���������� ������
end.  