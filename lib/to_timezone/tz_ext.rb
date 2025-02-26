# frozen_string_literal: true

require_relative "tzs"
require "active_support/core_ext/time"

module ToTimezone
  module TzExt
    ToTimezone::Tzs::TIMEZONES.each do |abbr, timezone|
      define_method("to_#{abbr}") do
        time = is_a?(String) ? Time.parse(self) : self
        time.utc.in_time_zone(timezone)
      end
    end
  end
end

# Extend Time and DateTime
class Time
  include ToTimezone::TzExt
end

class DateTime
  include ToTimezone::TzExt
end

class String
  include ToTimezone::TzExt
end

# Explicitly patch ActiveSupport::TimeWithZone
if defined?(ActiveSupport::TimeWithZone)
  class ActiveSupport::TimeWithZone
    include ToTimezone::TzExt
  end
end
