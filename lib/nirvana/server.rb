module Nirvana
  class Server
    def initialize(application, sockets)
      @application = application
      @sockets = sockets
    end

    def run
      loop do
        begin
          accept_connection
        rescue Interrupt
          Nirvana.logger.log("Oh no... don't go... stay with me")
          return
        end
      end
    end

    def accept_connection
      selections, = IO.select(@sockets)
      io, = selections

      begin
        socket, = io.accept
        Nirvana::HTTP_response_generator::new(socket, @application).handle
      ensure
        socket.close
      end
    end
  end
end
