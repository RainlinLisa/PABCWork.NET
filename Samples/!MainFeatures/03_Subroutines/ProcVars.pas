// ��� ��������� ������� ������������� ���������� ����������
// ����������� ��� ���������� ����� �������� .NET, ��� ���� �������� �������� +=, -=

procedure pp;
begin
  writeln('����� ������� ���������');
end;

type 
  A = class
  private
    x: integer;
  public  
    constructor Create(xx: integer);
    begin
      x := xx;
    end;
    procedure pp;
    begin
      writeln('����� ������ ������, �������� ���� ����� ',x);
    end;
    class procedure ppstatic; 
    begin
      writeln('����� ���������� ������ ������');
    end;
  end;

var p: procedure;

begin
  p := pp;
  var a1: A := new A(5);
  p += a1.pp;
  p += A.ppstatic;
  p;
  writeln;
  p -= pp;
  p;
end.