unit RobTasks;

interface

uses RobotTaskMaker;

implementation

procedure FirstRob;
begin
  TaskText('������� myrob1. ��������� ���������� ������');
  Field(10,6);
  HorizontalWall(0,3,4);
  VerticalWall(4,3,2);
  RobotBegin(1,4);
  VerticalWall(5,1,5);
  HorizontalWall(5,1,4);
  RobotEnd(6,2);
  Tag(6,2);
end;

procedure SecondRob;
var n,i: integer;
begin
  TaskText('������� myrob2. ��������� ������ ��� ������������');
  n:=Random(4)+7;
  Field(n,4);
  RobotBeginEnd(1,3,n,3);
  MarkPainted(n,2);
  Tag(n,3);
  for i:=2 to n-1 do
    if Random(3)=1 then
    begin
      MarkPainted(i,2);
      Tag(i,3);
    end;
end;

begin
  RegisterTask('myrob1',FirstRob);
  RegisterTask('myrob2',SecondRob);
  RegisterGroup('myrob', '��� ������� ��� ������', 'RobTasks', 2);
end.

