// ������������� ������ ������ ���������� ��� �������� ������������ ������
// �� ����������� ������ ���� ������
type 
  Node = class
    data: integer;
    next: Node;
    constructor (d: integer; n: Node);
    begin
      data := d;
      next := n;
    end;
  end;

// ���������� ���� "�����" ������������ ����� ������ �� ������, ���������� �������������
var first: Node;
  
begin
  first := nil;
  // ��������� � ������ ������������ ������
  first := new Node(3,first);
  first := new Node(7,first);
  first := new Node(5,first);
  
  // ����� ������������ ������. ^ �����������
  writeln('���������� ������������ ������ (������������� ������ ������ ����������): ');
  var p := first;
  while p<>nil do
  begin
    write(p.data,' ');
    p := p.next;
  end;
  
  // ���������� ������������ ������
  first := nil; // ������� ������ ������� ������, �� ������� ����� ������ �� ���������
end.  