// Stopwatch - ����� ������������� ������� (� ��������� �� 0.001 �)
begin
  var stopWatch := new System.Diagnostics.Stopwatch;
  stopWatch.Start;
 
  Sleep(123);
 
  stopWatch.Stop;
  var ts := stopWatch.Elapsed;
  writelnFormat('����� ������: {0:00}:{1:00}:{2:00}.{3:000}',ts.Hours, ts.Minutes, ts.Seconds, ts.Milliseconds);
end.