require "rack"
require "slop"
require "socket"
require "time"
require "uri"

require "nirvana/http_response_generator"
require "nirvana/launcher"
require "nirvana/server"
require "nirvana/cli"
require "nirvana/logger"
require "nirvana/version"

module Nirvana
  def self.logger
    @logger ||= Nirvana::Logger.new
  end
end
