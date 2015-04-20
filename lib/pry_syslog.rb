require 'pry'
require 'pry_syslog/syslog_hook'
require 'pry_syslog/version'

# Parent namespace of the pry-syslog gem.
module PrySyslog
end

Pry::History.send(:include, PrySyslog::SyslogHook)
