// ����������� ����������

function add(a,b: integer): integer;
begin
  Result := a + b;
end;

function mult(a,b: integer): integer;
begin
  Result := a * b;
end;

var p: function (a,b: integer): integer;
  
  
begin
  p := add;
  writeln('����� 2 � 3 ����� ',p(2,3));
  p := mult;
  writeln('������������ 2 � 3 ����� ',p(2,3));
end.  