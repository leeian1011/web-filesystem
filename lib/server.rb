require 'socket'
require_relative 'parser'

class Server
  def initialize(port = 6969)
    @port = port
    @server = TCPServer.new('localhost', @port)
  end

  def serve
    loop do
      client = @server.accept
      request = client.gets
      data = Parser.parse(request)
      puts data
      client.write("#{request}")
      client.close
    end
  end
end
