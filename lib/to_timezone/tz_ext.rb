# frozen_string_literal: true

require_relative 'tzs'
require 'active_support/time'
require 'active_support/core_ext/string/zones'

module ToTimezone
  # For Time, String, and ActiveSupport::TimeWithZone — all support in_time_zone directly.
  module TzExt
    ToTimezone::Tzs::TIMEZONES.each do |abbr, timezone|
      define_method(:"to_#{abbr}") { in_time_zone(timezone) }
    end
  end

  # DateTime#in_time_zone requires a prior to_time conversion.
  module TzExtDateTime
    ToTimezone::Tzs::TIMEZONES.each do |abbr, timezone|
      define_method(:"to_#{abbr}") { to_time.in_time_zone(timezone) }
    end
  end
end

class Time
  include ToTimezone::TzExt
end

class DateTime
  include ToTimezone::TzExtDateTime
end

class String
  include ToTimezone::TzExt
end

if defined?(ActiveSupport::TimeWithZone)
  class ActiveSupport::TimeWithZone
    include ToTimezone::TzExt
  end
end
