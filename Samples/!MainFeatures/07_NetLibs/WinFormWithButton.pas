// �������� �������� ����������
{$apptype windows}
{$reference System.Windows.Forms.dll}

uses 
  System,
  System.Windows.Forms;

var 
  myForm: Form;
  myButton: Button;
  
procedure MyButtonClick(sender: Object; e: EventArgs);
begin
  myForm.Close;
end;

begin
  myForm := new Form;
  myForm.Text := '������� ����������';
  myButton := new Button;
  myButton.Text := '  ������� ����  ';
  myButton.AutoSize := True;
  myButton.Left := 90;
  myButton.Top := 110;
  myForm.Controls.Add(myButton);
  myButton.Click += MyButtonClick;
  Application.Run(myForm);
end.
