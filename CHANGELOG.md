# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Split `TzExt` into two modules — `TzExt` (Time, String, ActiveSupport::TimeWithZone) and `TzExtDateTime` (DateTime) — eliminating the `is_a?(DateTime)` runtime branch from every method call
- Replaced `require 'active_support'` + `require 'active_support/core_ext/time'` with the targeted `require 'active_support/time'`, reducing load overhead in standalone (non-Rails) usage
- Method names in `define_method` now use symbols (`:"to_#{abbr}"`) instead of strings, skipping the string-to-symbol intern step at load time

### Fixed
- Minimum Ruby version raised from `2.5.0` to `2.7.0`; Ruby 2.5 and 2.6 reached end-of-life in March 2021 and March 2022 respectively

## [0.4.0] - 2026-06-26

### Changed
- Updated gem dependencies
- Improved timezone conversion methods in `TzExt` module
- Added `ActiveSupport::TimeWithZone` support via conditional include

## [0.3.0] - 2025-08-19

### Added
- `tzdata` added as a CI dependency for reliable timezone support across environments

### Removed
- Removed automated release job from CI configuration

## [0.2.4] - 2025-08-19

### Changed
- Refactored timezone conversion methods for `DateTime` and `String` classes
- Resolved RuboCop offenses across the codebase

## [0.2.3] - 2025-08-19

### Added
- CI workflow for automated testing and gem releasing

### Removed
- Removed `timecop` as a development dependency

## [0.2.0] - 2025-02-26

### Added
- String support: timezone conversion methods can now be called directly on time strings (e.g. `"2025-02-07 07:00:00 +0800".to_utc`)
- Added `active_support/core_ext/string/zones` to support `String#in_time_zone`

## [0.1.0] - 2025-02-07

### Added
- Initial release
- Timezone conversion methods (`to_pht`, `to_utc`, `to_ict`, etc.) for `Time` and `DateTime`
- 150+ timezone abbreviation aliases backed by IANA timezone identifiers
