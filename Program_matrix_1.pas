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
  // ROW - р€д,строка.
  // COLumn - колонка, столбец.
  min_in_2_row: element_massiva;
  max_in_3_row: element_massiva;
  min_in_2_col: element_massiva;

  max_in_rows: array [1..razmer_massiva] of element_massiva; // максимальные дл€ каждой строки
  max_in_cols: array [1..razmer_massiva] of element_massiva; // максимальные дл€ каждого столбца
  min_in_rows: array [1..razmer_massiva] of element_massiva; // минимальные дл€ каждого столбца
  max_col_skalyar: array [1..razmer_massiva] of element_massiva;
  min_row_skalyar: array [1..razmer_massiva] of element_massiva;
begin
  writeln('”кажите размерность матрицы (но не больше ',razmer_massiva,'):');
  readln(n);
  n:=abs(n);
  if (n<=razmer_massiva) then begin
    randomize();
    for x := 1 to n do
      for y := 1 to n do
        matrix[x,y] := random(razmer_massiva*2+5);
    writeln('ћатрица-результат:');
    for x := 1 to n do begin
      for y := 1 to n do
        write(matrix[x,y]:4, ' ');
      writeln;
    end;
  end else writeln('ќй так нельз€!');
  
  // поиск минимального элемента во 2ой строке x=2
  min_in_2_row := matrix[2,1];
  for y:=2 to razmer_massiva do
   if matrix[2,y] < min_in_2_row then min_in_2_row:=matrix[2,y];
  writeln('минимальный элемент ', min_in_2_row);
  
  // поиск максимального элемена в 3ей строке
  max_in_3_row := matrix[3,1];
  for y:=2 to razmer_massiva do
   if matrix[3,y] > max_in_3_row then max_in_3_row:=matrix[3,y];
  writeln('максимальный элемент ', max_in_3_row);
  
  // поиск минимального элемента во 2ом столбце y=2
    min_in_2_col := matrix[1,2];
  for x:=2 to razmer_massiva do
   if matrix[x,2] < min_in_2_col then min_in_2_col:=matrix[x,2];
  writeln('минимальный элемент ', min_in_2_col);
  
  // поиск максимального элемента в каждой строке
    {for x:=1 to razmer_massiva do
      max_in_rows[x]:= matrix[x,1];}
    
    for x:=1 to razmer_massiva do
      begin
      max_in_rows[x]:= matrix[x,1];
      for y:=1 to razmer_massiva do
      if matrix[x,y] > max_in_rows[x] then max_in_rows[x]:=matrix[x,y];
      
      end;
      
      writeln('максимальный элемент в каждой строке ');
      for x:=1 to razmer_massiva do
      write(' ', max_in_rows[x]);
      writeln;
  // поиск максимального элемента в каждом столбце
      for y:=1 to razmer_massiva do
      begin
      max_in_cols[y]:= matrix[1,y];
      for x:=1 to razmer_massiva do
      if matrix[x,y] > max_in_cols[y] then max_in_cols[y]:=matrix[x,y];
      
      end;
      
      writeln('максимальный элемент в каждом столбце ');
      for y:=1 to razmer_massiva do
      write(' ', max_in_cols[y]);
      writeln;
  
  // поиск и вывод »ндекса строки содержащей максимальный элемент
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
      writeln('максимальный из всех строк ', m, ' его индекс ', index_row_max);     
  
  // поиск и вывод »ндекса строки содержащей минимальный элемент
      for x:=1 to razmer_massiva do
      begin
      min_in_rows[x]:= matrix[x,1];
      for y:=1 to razmer_massiva do
      if matrix[x,y] < min_in_rows[x] then min_in_rows[x]:=matrix[x,y];
      end;
      
      writeln('минимальный элемент в каждой строке ');
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
      writeln('минимальный из всех строк ', k, ' его индекс ', index_row_min);
  
  // поиск и вывод »ндекса столбца содержащего максимальный элемент
  
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
      writeln('максимальный из всех столбцов ', m, ' его индекс ', index_col_max);
  
  // перемножить скал€рно столбец с максимальным элементом и строку с минимальным
  
 x:=index_col_max;

 for y:=1 to razmer_massiva do
 max_col_skalyar[y]:=matrix[x,y];
 
 y:=index_row_min; 
  
 for x:=1 to razmer_massiva do
 min_row_skalyar[x]:=matrix[x,y];
 
 matrix_skalyar:=0;
 
 for i:=1 to razmer_massiva do
 matrix_skalyar:=matrix_skalyar + max_col_skalyar[i] * min_row_skalyar[i];
 
 writeln('—кал€рное произведение = ', matrix_skalyar);
 
 end.