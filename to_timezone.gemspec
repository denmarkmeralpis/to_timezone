# frozen_string_literal: true

require_relative "lib/to_timezone/version"

Gem::Specification.new do |spec|
  spec.name = "to_timezone"
  spec.version = ToTimezone::VERSION
  spec.authors = ["Nujian Den Mark Meralpis"]
  spec.email = ["denmarkmeralpis@gmail.com"]

  spec.summary = "Seamlessly convert Time and DateTime objects to different time zones with intuitive methods like `.to_pht`, `.to_ict`, and more."
  spec.description = "Adds intuitive time zone conversion methods to Time and DateTime in Rails, allowing calls like `.to_pht`, `.to_ict`, and more for effortless time zone handling."
  spec.homepage = "https://github.com/denmarkmeralpis/to_timezone.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["allowed_push_host"] = "https://github.com"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 6.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "timecop"
end
