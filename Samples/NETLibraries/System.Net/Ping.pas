// ������������� Ping
uses System.Net.NetworkInformation;

const address = 'www.yandex.ru';

begin
  var p := new Ping();
  try
    var res := p.Send(address);
    writeln('IP ����� �������: ',res.Address);
    writeln('����� �������: ',res.RoundtripTime,' ��');
  except
    on e: Exception do
      write(e.Message);
  end;    
end.