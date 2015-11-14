// ���� "������"
const InitialCount=15;

var
  /// ������� ���������� ������
  Count: integer;
  /// ���������� ������, ������� ����� �����
  Num: integer;
  /// ����� �������� ������
  Player: integer;

begin
  Player := 1;
  Count := InitialCount;
  
  repeat
    if Player=1 then
    begin
      var Correct: boolean;
      repeat
        write('��� ���. �� ����� ',Count,' ������. ');
        write('������� ������ �� ������? ');
        readln(Num);
        Correct := (Num>=1) and (Num<=3) and (Num<=Count);
        if not Correct then
          writeln('�������! ��������� ����!');
      until Correct;
    end
    else
    begin
      Num := Random(1,3);
      if Num>Count then 
        Num := Count;
      writeln('��� ���. � ���� ',Num,' ������');
    end;
    Count -= Num;
    if Player=1 then 
      Player := 2
    else Player := 1;
  until Count=0;
  
  if Player=1 then
    writeln('�� ��������!')
  else writeln('�� ���������!');
end.
