module PrySyslog
  module SyslogHook
    def restore_default_behavior
      super
      @native_pusher = @pusher
      @pusher = method(:syslog_pusher)
    end

    def syslog_pusher(line)
      puts 'Got line %s' % line
      @native_pusher.call(line)
    end
  end
end
