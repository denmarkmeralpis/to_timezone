# frozen_string_literal: true

require_relative "tzs"
require "active_support/core_ext/time"
require "active_support/core_ext/string/zones"

module ToTimezone
  module TzExt
    ToTimezone::Tzs::TIMEZONES.each do |abbr, timezone|
      define_method("to_#{abbr}") do
        utc.in_time_zone(timezone)
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

  def utc
    in_time_zone("UTC")
  end
end

# Explicitly patch ActiveSupport::TimeWithZone
if defined?(ActiveSupport::TimeWithZone)
  class ActiveSupport::TimeWithZone
    include ToTimezone::TzExt
  end
end
