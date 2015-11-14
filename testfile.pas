program testfile;
var
kakoi_to_fail:text;

begin
assign(kakoi_to_fail,'c:\work\PABCWork.NET\FAIL_FAIL.txt');
rewrite(kakoi_to_fail);

writeln(kakoi_to_fail, 'kakoito infa');

close(kakoi_to_fail);
end.