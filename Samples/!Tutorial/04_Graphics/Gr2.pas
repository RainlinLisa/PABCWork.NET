// �������. �����. ��������� ����. �������� ������
uses GraphABC,Utils;

begin
  for var i:=1 to 100000 do
    SetPixel(Random(Window.Width),Random(Window.Height),clRandom);
  writeln('����� ������: ',Milliseconds/1000,' ������');  
end.