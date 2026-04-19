require_relative 'server'

if __FILE__ == $0
  Server.new().serve()
end

