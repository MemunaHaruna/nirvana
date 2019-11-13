require "nirvana/cli"
require "nirvana/logger"
require "nirvana/version"

module Nirvana
  def self.logger
    @logger ||= Nirvana::Logger.new
  end
end
