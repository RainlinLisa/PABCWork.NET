{$apptype windows}
{$reference 'System.Windows.Forms.dll'}
{$reference 'System.Drawing.dll'}
{$resource 'Open.png'}
{$resource 'Save.png'}

uses System.Windows.Forms;

const 
  TextFileExt = 'txt';
  TextFileFilter = '��������� ����� (*.'+TextFileExt+')|*.'+TextFileExt;

var
  myForm: Form;
  TextBox1: TextBox;

procedure SaveFile(FileName: string);
begin
  //������� �������� ����� � ���������� Windows 1251, ���������� ��� ����������� ���������� ������� ����
  var f := new System.IO.StreamWriter(FileName, false, System.Text.Encoding.Default);
  f.Write(TextBox1.Text);
  f.Close;
end;

procedure OpenFile(FileName: string);
begin
  //������� �������� ����� � ���������� Windows 1251, ���������� ��� ����������� ������ ������� ����
  var f := new System.IO.StreamReader(FileName, System.Text.Encoding.Default);
  TextBox1.Text := f.ReadToEnd;
  f.Close;
end;

procedure FormClose(sender: object; args: System.EventArgs);
begin
  myForm.Close;  
end;

procedure MenuSaveClick(sender:object; args:System.EventArgs);
begin
  //������ ��� ������ �����
  var sd := new SaveFileDialog;
  //���������� �����������
  sd.DefaultExt := TextFileExt;
  //������ ��� ������
  sd.Filter := TextFileFilter;
  if sd.ShowDialog=DialogResult.OK then 
    //���� ��������� ���������� sd.ShowDialog ��� ������� ������ ������������� ��
    SaveFile(sd.FileName);
end;

procedure MenuOpenClick(sender:object; args:System.EventArgs);
begin
  var sd := new OpenFileDialog;
  sd.DefaultExt := TextFileExt;
  sd.Filter := TextFileFilter;
  if sd.ShowDialog = DialogResult.OK then 
    OpenFile(sd.FileName);
end;

begin
  myForm := new Form;
  myForm.Text := '������� ��������� ��������';

  TextBox1 := new TextBox;
  TextBox1.Multiline := True;
  TextBox1.Height := 100;
  TextBox1.Dock := DockStyle.Fill;
  //������ ���������
  TextBox1.ScrollBars := ScrollBars.Both;
  //������������� �����
  TextBox1.Font := new System.Drawing.Font('Courier New',10);

  myForm.Controls.Add(TextBox1);
  
  //������� ����
  var toolStrip1 := new ToolStrip;
  toolStrip1.GripStyle := System.Windows.Forms.ToolStripGripStyle.Hidden;
  var miFile := new ToolStripMenuItem('����');  
  miFile.DropDownItems.Add(new ToolStripMenuItem('�������',         new System.Drawing.Bitmap(GetResourceStream('Open.png')),MenuOpenClick));
  miFile.DropDownItems.Add(new ToolStripMenuItem('��������� ���...',new System.Drawing.Bitmap(GetResourceStream('Save.png')),MenuSaveClick));
  miFile.DropDownItems.Add(new ToolStripMenuItem('�����',nil,FormClose));
  toolStrip1.Items.Add(miFile);
  myForm.Controls.Add(toolStrip1);
  
  //��������� � ��������� ��������� ������
  //���� �� ���������� = 1, �� ��������� 
  if CommandLineArgs.Length = 1 then 
    OpenFile(CommandLineArgs[0]);
      
  Application.Run(myForm);
end.