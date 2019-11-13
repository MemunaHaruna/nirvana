require "slop"

module Nirvana
  class CLI
    BANNER = "usage: nirvana [options] [./config.ru]".freeze

    def parse(items = ARGV)
      config = Slop.parse(items) do |options|
        options.banner = BANNER

        options.on "-h", "--help", 'help' do
          return help(options)
        end

        options.on "-v", "--version", 'version' do
          return version
        end

        options.string "-b", "--bind", 'bind (default: 0.0.0.0)', default: "0.0.0.0"
        options.integer "-p", "--port", 'port (default: 8888)', default: 8888
        options.integer "--backlog", 'backlog (default: 64)', default: 64
        options.boolean "--reuseaddr", 'reuseaddr (default: true)', default: true
      end

      run(config)
    end

  private

  def help(options)
    Nirvana.logger.log("#{options}")
  end

  def version
    Nirvana.logger.log(VERSION)
  end

  def run(options)
    config, = options.arguments
    Launcher.new(options[:port], options[:bind], options[:reuseaddr], options[:backlog], config || "./config.ru").run
  end
  end
end
