// ���������� ��������� ��������
// ��� ������� ��������� ����������� Shift+F9 !!!
uses CRT;

begin
  SetWindowTitle('��������� �������� (Enter - ����� ������, Esc - �����)');
  clrScr;
  repeat
    var c := ReadKey;
    case c of
  #13: writeln;
  #27: break;
  #32..#255: write(c);
  #0: c := ReadKey;
    end;
  until false;
end.
