// ��������������� ���� "������ ��������". 
// ���������� �� ������ "��� ����������" ������� ����� ����� �����
// ��������: "��� ���������� ��� �� ���" - "����� ������"
type
  TNode = class
    s: string;
    left,right: TNode;   
    constructor(s: string);
    begin
      Self.s := s;
      left := nil;
      right := nil;
    end;
  end;

var f: text;

/// ��������� ������ � ���� 
procedure SaveToFile(p: TNode);
begin
  if p=nil then
  begin
    writeln(f,'');
    exit
  end;
  writeln(f,p.s);
  SaveToFile(p.left);
  SaveToFile(p.right);
end;

/// ��������� ������ �� �����
function LoadFromFile: TNode;
var
  s: string;
  p: TNode;
begin
  readln(f,s);
  if s='' then
  begin
    Result := nil;
    exit
  end;
  p := new TNode(s);
  p.left := LoadFromFile;
  p.right := LoadFromFile;
  Result := p;
end;

var
  p,p1,p2,root: TNode;
  x: integer;
  s,q: string;

begin
  writeln('��������� ��������');
  assign(f, 'animals_data.txt');
  if not FileExists('animals_data.txt') then
    root := new TNode('������')
  else
  begin
    reset(f);
    root := loadfromfile;
    close(f);
  end;

  p := root;
  while p.left<>nil do
  begin
    write(p.s+'? (0 - ���, 1 - ��): ');
    readln(x);
    if x=1 then 
      p := p.left
    else 
      p := p.right
  end;
  
  write('��� '+p.s+'? (0 - ���, 1 - ��): ');
  readln(x);
  if x=1 then
    writeln('� �������!')
  else
  begin
    write('� ���������. ��� ��� �� ��������? ');
    readln(s);
    write('������� ������, ���������� ��� �������� �� '+p.s+': ');
    readln(q);
    p1 := new TNode(s);
    p2 := new TNode(p.s);
    p.s := q;
    p.left := p1;
    p.right := p2;
  end;
  Rewrite(f);
  SaveToFile(root);
  Close(f);
end.
