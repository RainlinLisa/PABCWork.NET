uses FormsABC;

var 
  a,b,sum,prod: IntegerField;
  d: Button;

procedure MyClick;
begin
  sum.Value := a.Value + b.Value;
  prod.Value := a.Value * b.Value;
end;

begin
  a := new IntegerField('a:');
  b := new IntegerField('b:');
  LineBreak;
  sum := new IntegerField('�����:',220);
  LineBreak;
  prod := new IntegerField('������������:',220);
  LineBreak;
  EmptyLine(20);
  d := new Button('���������');
  d.Click += MyClick;
end.