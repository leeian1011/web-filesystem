require 'socket'

class Server
  def initialize(port = 6969)
    @port = port
    @server = TCPServer.new('localhost', @port)
  end

  def serve
    loop do
      client = @server.accept
      request = client.gets
      puts request
      client.write("#{request}")
      client.close
    end
  end
end
