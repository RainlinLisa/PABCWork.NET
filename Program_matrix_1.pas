program matrix_1;
const
  razmer_massiva = 5;
  MAX_INTEGER = 2147483648;
type
  element_massiva = integer;
  dvumern_massiv = array [1..razmer_massiva, 1..razmer_massiva] of element_massiva;
var
  matrix : dvumern_massiv;
  n, m, x, y, k, i, index_row_max, index_col_max, index_row_min, matrix_skalyar: integer;
  // ROW - ���,������.
  // COLumn - �������, �������.
  min_in_2_row: element_massiva;
  max_in_3_row: element_massiva;
  min_in_2_col: element_massiva;

  max_in_rows: array [1..razmer_massiva] of element_massiva; // ������������ ��� ������ ������
  max_in_cols: array [1..razmer_massiva] of element_massiva; // ������������ ��� ������� �������
  min_in_rows: array [1..razmer_massiva] of element_massiva; // ����������� ��� ������� �������
  max_col_skalyar: array [1..razmer_massiva] of element_massiva;
  min_row_skalyar: array [1..razmer_massiva] of element_massiva;
begin
  writeln('������� ����������� ������� (�� �� ������ ',razmer_massiva,'):');
  readln(n);
  n:=abs(n);
  if (n<=razmer_massiva) then begin
    randomize();
    for x := 1 to n do
      for y := 1 to n do
        matrix[x,y] := random(razmer_massiva*2+5);
    writeln('�������-���������:');
    for x := 1 to n do begin
      for y := 1 to n do
        write(matrix[x,y]:4, ' ');
      writeln;
    end;
  end else writeln('�� ��� ������!');
  
  // ����� ������������ �������� �� 2�� ������ x=2
  min_in_2_row := matrix[2,1];
  for y:=2 to razmer_massiva do
   if matrix[2,y] < min_in_2_row then min_in_2_row:=matrix[2,y];
  writeln('����������� ������� ', min_in_2_row);
  
  // ����� ������������� ������� � 3�� ������
  max_in_3_row := matrix[3,1];
  for y:=2 to razmer_massiva do
   if matrix[3,y] > max_in_3_row then max_in_3_row:=matrix[3,y];
  writeln('������������ ������� ', max_in_3_row);
  
  // ����� ������������ �������� �� 2�� ������� y=2
    min_in_2_col := matrix[1,2];
  for x:=2 to razmer_massiva do
   if matrix[x,2] < min_in_2_col then min_in_2_col:=matrix[x,2];
  writeln('����������� ������� ', min_in_2_col);
  
  // ����� ������������� �������� � ������ ������
    {for x:=1 to razmer_massiva do
      max_in_rows[x]:= matrix[x,1];}
    
    for x:=1 to razmer_massiva do
      begin
      max_in_rows[x]:= matrix[x,1];
      for y:=1 to razmer_massiva do
      if matrix[x,y] > max_in_rows[x] then max_in_rows[x]:=matrix[x,y];
      
      end;
      
      writeln('������������ ������� � ������ ������ ');
      for x:=1 to razmer_massiva do
      write(' ', max_in_rows[x]);
      writeln;
  // ����� ������������� �������� � ������ �������
      for y:=1 to razmer_massiva do
      begin
      max_in_cols[y]:= matrix[1,y];
      for x:=1 to razmer_massiva do
      if matrix[x,y] > max_in_cols[y] then max_in_cols[y]:=matrix[x,y];
      
      end;
      
      writeln('������������ ������� � ������ ������� ');
      for y:=1 to razmer_massiva do
      write(' ', max_in_cols[y]);
      writeln;
  
  // ����� � ����� ������� ������ ���������� ������������ �������
      m:=max_in_rows[1];
      index_row_max:=1;
      for x:=2 to razmer_massiva do
      begin
      if max_in_rows[x] > m then
        begin
        m:=max_in_rows[x];
        index_row_max:=x;
        end;
      end;
      writeln('������������ �� ���� ����� ', m, ' ��� ������ ', index_row_max);     
  
  // ����� � ����� ������� ������ ���������� ����������� �������
      for x:=1 to razmer_massiva do
      begin
      min_in_rows[x]:= matrix[x,1];
      for y:=1 to razmer_massiva do
      if matrix[x,y] < min_in_rows[x] then min_in_rows[x]:=matrix[x,y];
      end;
      
      writeln('����������� ������� � ������ ������ ');
      for x:=1 to razmer_massiva do
      write(' ', min_in_rows[x]);
      writeln;
  
      k:=min_in_rows[1];
      index_row_min:=1;
      for x:=2 to razmer_massiva do
      begin
      if min_in_rows[x] < k then
        begin
        k:=min_in_rows[x];
        index_row_min:=x;
        end;
      end;
      writeln('����������� �� ���� ����� ', k, ' ��� ������ ', index_row_min);
  
  // ����� � ����� ������� ������� ����������� ������������ �������
  
      m:=max_in_cols[1];
      index_col_max:=1;
      for y:=2 to razmer_massiva do
      begin
      if max_in_cols[y] > m then
        begin
        m:=max_in_cols[y];
        index_col_max:=y;
        end;
      end;
      writeln('������������ �� ���� �������� ', m, ' ��� ������ ', index_col_max);
  
  // ����������� �������� ������� � ������������ ��������� � ������ � �����������
  
 x:=index_col_max;

 for y:=1 to razmer_massiva do
 max_col_skalyar[y]:=matrix[x,y];
 
 y:=index_row_min; 
  
 for x:=1 to razmer_massiva do
 min_row_skalyar[x]:=matrix[x,y];
 
 matrix_skalyar:=0;
 
 for i:=1 to razmer_massiva do
 matrix_skalyar:=matrix_skalyar + max_col_skalyar[i] * min_row_skalyar[i];
 
 writeln('��������� ������������ = ', matrix_skalyar);
 
 end.