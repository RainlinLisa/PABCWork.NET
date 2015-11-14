// ������������. ����������� � ����������� �������
type 
  Person = class
  private
    name: string;
    age: integer;
  public
    constructor (n: string; a: integer);
    begin
      name := n; age := a;
    end;
    procedure Print; virtual; // ����������� �������. ���������������� � �������-��������
    begin
      var s := GetType.ToString;
      write('���: ',Copy(s,pos('.',s)+1,Length(s)):7,'   ���: ',name,'   �������: ',age);
    end;
    procedure Println;
    begin
      Print;
      writeln;
    end;
  end;
  
  Pupil = class(Person) // Pupil - ��������� Person
  private
    clas: integer;
  public
    constructor (n: string; a,c: integer);
    begin
      inherited Create(n,a); // ����� ��������������� ������������
      clas := c;
    end;
    procedure Print; override;
    begin
      inherited Print;
      write('   �����: ',clas);
    end;
  end;
  
  Teacher = class(Person)
  private
    predm: string;
  public
    constructor (n: string; a: integer; p: string);
    begin
      inherited Create(n,a); // ����� ��������������� ������������
      predm := p;
    end;
    procedure Print; override;
    begin
      inherited Print;
      write('   �������: ',predm);
    end;
  end;
  
var a: array of Person := new Person[4]; // ����������� ��������� - ��������� �������� �������� ������. ����� ��������� ������� ����������� �������

begin
  a[0] := new Pupil('����',11,5);
  a[1] := new Teacher('����� ��������',30,'�����������');
  a[2] := new Person('������',65);
  a[3] := new Pupil('����',12,6);
  
  for var i:=0 to a.Length-1 do
    a[i].Println;
end.