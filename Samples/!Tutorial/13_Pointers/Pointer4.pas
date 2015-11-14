// ��������� ������������ ������
// ������������� ���������� ��� �������� ������������ ������
type 
  PNode = ^TNode;
  TNode = record
    data: integer;
    next: PNode;
  end;

function NewNode(d: integer; n: PNode): PNode;
begin
  New(Result);
  Result^.data := d;
  Result^.next := n;
end;

var first: PNode;
  
begin
  first := nil;
  // ��������� � ������ ������������ ������
  first := NewNode(3,first);
  first := NewNode(7,first);
  first := NewNode(5,first);
  
  // ����� ������������ ������
  writeln('���������� ������������ ������: ');
  var p := first;
  while p<>nil do
  begin
    write(p^.data,' ');
    p := p^.next;
  end;
  
  // ���������� ������������ ������
  p := first;
  while p<>nil do
  begin
    var p1 := p;
    p := p^.next;
    Dispose(p1);
  end;
end.  