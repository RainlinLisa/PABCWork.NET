// ����������. ��������� IComparer
uses System,System.Collections.Generic;

type 
  Student = class
  private
    name: string;
    age,course,group: integer;
  public
    constructor (n: string; a,c,g: integer);
    begin
      name := n; 
      age := a;
      course := c;
      group := g;
    end;
    function ToString: string; override;
    begin
      Result := Format('���: {0,9}   �������: {1}   ����: {2}   ������: {3}',name,age,course,group);
    end;
  end;
  
  SortByName = class(IComparer<Student>)
  public
    function Compare(s1,s2: Student): integer;
    begin
      Result := string.Compare(s1.name,s2.name);
    end;
  end;

  SortByAge = class(IComparer<Student>)
  public
    function Compare(s1,s2: Student): integer;
    begin
      Result := s1.age - s2.age;
    end;
  end;
  
procedure WriteArray<T>(prompt: string; a: array of T);
begin
  writeln(prompt);
  foreach x: T in a do
    writeln(x);
  writeln;  
end;
  
var a: array of Student;  

begin
  SetLength(a,5);
  a[0] := new Student('�������',18,2,3);
  a[1] := new Student('������',19,3,10);
  a[2] := new Student('��������',22,5,1);
  a[3] := new Student('��������',17,1,2);
  a[4] := new Student('�������',25,4,8);
  WriteArray('�������� ������:',a);
  &Array.Sort(a,new SortByName);
  WriteArray('���������� �� �����: ',a);
  &Array.Sort(a,new SortByAge);
  WriteArray('���������� �� ��������: ',a);
end.
