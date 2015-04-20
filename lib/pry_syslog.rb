require 'pry'
require 'pry_syslog/version'
require 'syslog/logger'

# Parent namespace of the pry-syslog gem.
module PrySyslog
  def self.announce_logging
    puts 'All commands executed in this session will be logged to syslog.'
  end

  def self.log_code_execution(code)
    syslog.info(code)
  end

  def self.syslog
    @syslog ||= ::Syslog::Logger.new('pry_history', Syslog::LOG_LOCAL1)
  end
end

Pry.config.hooks.add_hook(:before_session, :logged_warning) do
  PrySyslog.announce_logging
end

Pry.config.hooks.add_hook(:before_eval, :log_code_execution) do |code|
  PrySyslog.log_code_execution(code)
end
