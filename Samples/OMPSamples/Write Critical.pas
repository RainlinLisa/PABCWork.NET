// ����� � ������������ ������ ��� ������������� ����������� ������
// � � �� ��������������. � ������ ������ ��-�� ������������� �������
// � ������������ ������� ��������, ��� ������ ����� ����������
// �� ����� ������, � � ����������� �������. �� ������ ������ ������ �� �����. 
begin
  {$omp parallel sections}
  begin
    begin
      WriteLn('Thread 1 started');      
    end;
    begin
      WriteLn('Thread 2 started');
    end;
  end;
  
  {$omp parallel sections}
  begin
    begin
      {$omp critical a}
      WriteLn('Thread 1 started');
    end;
    begin
      {$omp critical a}
      WriteLn('Thread 2 started');
    end;
  end;  
end.