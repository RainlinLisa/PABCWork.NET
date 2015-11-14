type
  SexType = (Male, Female);
  Person = record
    Name: string;
    Age, Weight: integer;
    Sex: SexType;
  end;
  
procedure WritePerson(const p: Person);
begin
  writelnFormat('�������: {0}   ���: {1}   �������: {2}   ���: {3}',p.Name,p.Sex,p.Age,p.Weight);
end;
  
var 
  p: Person := (Name: '������'; Age: 20; Weight: 64; Sex: Male);
  p1: Person;  
begin
  p1 := p; // ������������ �������
  var p2: Person;
  p2.Name := '�������';
  p2.Age := 18;
  p2.Weight := 50;
  p2.Sex := Female;
  WritePerson(p2);
  
  var p3: Person;
  with p3 do
  begin
    Name := '�������';
    Age := 24;
    Weight := 80;
    Sex := Male;
  end;
  WritePerson(p3);
end.