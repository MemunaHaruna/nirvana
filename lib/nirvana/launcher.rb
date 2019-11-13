module Nirvana
  class Launcher
    def initialize(port, bind, reuseaddr, backlog, config)
      @port = port
      @bind = bind
      @reuseaddr = reuseaddr
      @backlog = backlog
      @config = config
    end

    def run
      Nirvana.logger.log("Nirvana processing request...")
      Nirvana.logger.log("#{@bind}:#{@port}")

      begin
        socket = Socket.new(:INET, :STREAM)
        socket.setsockopt(:SOL_SOCKET, :SO_REUSEADDR, @reuseaddr)
        socket.bind(Addrinfo.tcp(@bind, @port))
        socket.listen(@backlog)

        server = Nirvana::Server.new(application, [socket])
        server.run
      ensure
        socket.close
      end
    end

    private

    def application
      raw = File.read(@config)
      builder = <<~BUILDER
      Rack::Builder.new do
        #{raw}
      end.to_app
      BUILDER
      eval(builder, nil, @config)
    end

  end
end
