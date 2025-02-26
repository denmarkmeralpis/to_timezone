# ToTimezone

Easily convert Time and DateTime objects to different time zones using intuitive methods like `.to_pht`, `.to_ict`, and more.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'to_timezone'
```

Then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install to_timezone
```

## Usage

This gem allows you to call methods like `to_utc`, `to_pht`, and others to convert `Time` and `DateTime` objects to different time zones.

### Example:

```ruby
# Current time in your local timezone
current_time = Time.now

# Convert to a specific timezone (e.g., Manila)
manila_time = current_time.to_pht  # => Asia/Manila time zone

puts manila_time # => 2025-02-07 10:53:47.355858000 PST +08:00
```

or with Strings:

```ruby
pht = "2014-07-05 14:30:00".to_ph
puts pht # => 2014-07-05 14:30:00 +08:00
```
### Supported Timezones:

| Method            | Timezone Name                  |
| ----------------- | ------------------------------ |
| `to_idlw`         | Etc/GMT+12                     |
| `to_utc`          | Etc/UTC                        |
| `to_mit`          | Pacific/Midway                 |
| `to_sst_sam`      | Pacific/Apia                   |
| `to_sst`          | Pacific/Pago_Pago              |
| `to_hst`          | Pacific/Honolulu               |
| `to_akst`         | America/Juneau                 |
| `to_pst`          | America/Los_Angeles            |
| `to_pst_tj`       | America/Tijuana                |
| `to_mst`          | America/Denver                 |
| `to_mst_az`       | America/Phoenix                |
| `to_cst`          | America/Chicago                |
| `to_cst_sk`       | America/Regina                 |
| `to_cst_gdl`      | America/Mexico_City            |
| `to_cst_mt`       | America/Monterrey              |
| `to_cst_ca`       | America/Guatemala              |
| `to_est`          | America/New_York               |
| `to_est_in`       | America/Indiana/Indianapolis   |
| `to_est_bg`       | America/Bogota                 |
| `to_est_lm`       | America/Lima                   |
| `to_ast`          | America/Halifax                |
| `to_ast_pr`       | America/Puerto_Rico            |
| `to_vet`          | America/Caracas                |
| `to_bot`          | America/La_Paz                 |
| `to_clt`          | America/Santiago               |
| `to_nst`          | America/St_Johns               |
| `to_brt`          | America/Sao_Paulo              |
| `to_art`          | America/Argentina/Buenos_Aires |
| `to_uyt`          | America/Montevideo             |
| `to_gyt`          | America/Guyana                 |
| `to_wgt`          | America/Godthab                |
| `to_mia`          | Atlantic/South_Georgia         |
| `to_azt`          | Atlantic/Azores                |
| `to_cvt`          | Atlantic/Cape_Verde            |
| `to_gmt`          | Europe/Dublin                  |
| `to_gmt_lon`      | Europe/London                  |
| `to_wet`          | Europe/Lisbon                  |
| `to_cet`          | Africa/Casablanca              |
| `to_gmt_lbr`      | Africa/Monrovia                |
| `to_cet_bg`       | Europe/Belgrade                |
| `to_cet_bs`       | Europe/Bratislava              |
| `to_cet_bd`       | Europe/Budapest                |
| `to_cet_lj`       | Europe/Ljubljana               |
| `to_cet_pg`       | Europe/Prague                  |
| `to_cet_sv`       | Europe/Sarajevo                |
| `to_cet_sk`       | Europe/Skopje                  |
| `to_cet_wz`       | Europe/Warsaw                  |
| `to_cet_zg`       | Europe/Zagreb                  |
| `to_cet_brussels` | Europe/Brussels                |
| `to_cet_cp`       | Europe/Copenhagen              |
| `to_cet_md`       | Europe/Madrid                  |
| `to_cet_pr`       | Europe/Paris                   |
| `to_cet_am`       | Europe/Amsterdam               |
| `to_cet_br2`      | Europe/Berlin                  |
| `to_cet_zr`       | Europe/Zurich                  |
| `to_cet_ro`       | Europe/Rome                    |
| `to_cet_st`       | Europe/Stockholm               |
| `to_cet_vn`       | Europe/Vienna                  |
| `to_cet_wa`       | Africa/Algiers                 |
| `to_eet`          | Europe/Bucharest               |
| `to_eet_cai`      | Africa/Cairo                   |
| `to_eet_hls`      | Europe/Helsinki                |
| `to_eet_kv`       | Europe/Kiev                    |
| `to_eet_ri`       | Europe/Riga                    |
| `to_eet_sf`       | Europe/Sofia                   |
| `to_eet_tl`       | Europe/Tallinn                 |
| `to_eet_vi`       | Europe/Vilnius                 |
| `to_eet_at`       | Europe/Athens                  |
| `to_eet_is`       | Europe/Istanbul                |
| `to_fet`          | Europe/Minsk                   |
| `to_idt`          | Asia/Jerusalem                 |
| `to_cat`          | Africa/Harare                  |
| `to_sast`         | Africa/Johannesburg            |
| `to_usz1`         | Europe/Kaliningrad             |
| `to_msk`          | Europe/Moscow                  |
| `to_vlg`          | Europe/Volgograd               |
| `to_sam`          | Europe/Samara                  |
| `to_ast_kw`       | Asia/Kuwait                    |
| `to_ast_ry`       | Asia/Riyadh                    |
| `to_eat`          | Africa/Nairobi                 |
| `to_ast_bd`       | Asia/Baghdad                   |
| `to_irst`         | Asia/Tehran                    |
| `to_gst`          | Asia/Muscat                    |
| `to_azt_baku`     | Asia/Baku                      |
| `to_get`          | Asia/Tbilisi                   |
| `to_amt`          | Asia/Yerevan                   |
| `to_aft`          | Asia/Kabul                     |
| `to_yekt`         | Asia/Yekaterinburg             |
| `to_pkt`          | Asia/Karachi                   |
| `to_uzt`          | Asia/Tashkent                  |
| `to_ist`          | Asia/Kolkata                   |
| `to_npt`          | Asia/Kathmandu                 |
| `to_bst`          | Asia/Dhaka                     |
| `to_lkt`          | Asia/Colombo                   |
| `to_almt`         | Asia/Almaty                    |
| `to_novt`         | Asia/Novosibirsk               |
| `to_burm`         | Asia/Rangoon                   |
| `to_ict`          | Asia/Bangkok                   |
| `to_wib`          | Asia/Jakarta                   |
| `to_krat`         | Asia/Krasnoyarsk               |
| `to_cst_cn`       | Asia/Shanghai                  |
| `to_hkt`          | Asia/Hong_Kong                 |
| `to_xin`          | Asia/Urumqi                    |
| `to_myt`          | Asia/Kuala_Lumpur              |
| `to_sgt`          | Asia/Singapore                 |
| `to_cst_tpe`      | Asia/Taipei                    |
| `to_awst`         | Australia/Perth                |
| `to_irkt`         | Asia/Irkutsk                   |
| `to_ulat`         | Asia/Ulaanbaatar               |
| `to_kst`          | Asia/Seoul                     |
| `to_jst`          | Asia/Tokyo                     |
| `to_yakt`         | Asia/Yakutsk                   |
| `to_acst`         | Australia/Darwin               |
| `to_acdt`         | Australia/Adelaide             |
| `to_aedt`         | Australia/Canberra             |
| `to_aest`         | Australia/Melbourne            |
| `to_aest_syd`     | Australia/Sydney               |
| `to_aest_bne`     | Australia/Brisbane             |
| `to_aet`          | Australia/Hobart               |
| `to_pht`          | Asia/Manila                    |

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/to_timezone. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/denmarkmeralpis/to_timezone/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ToTimezone project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/to_timezone/blob/main/CODE_OF_CONDUCT.md).
