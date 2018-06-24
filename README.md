# ExchangeRate

A Ruby gem for calculating exchange rates based on a specified date.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'exchange_rate'
```

And then execute:

    $ bundle
    $ exchange_rate data

Or install it yourself as:

    $ gem install exchange_rate
    $ exchange_rate data

## Usage

```'require/exchange_rate'

Ruby: ```ExchangeRate.fetch```
CLI: ```exchange_rate data```

To read the data from an online source and store it locally.

Ruby: ```ExchangeRate.rate(date, currency)```
CLI: ```exchange_rate rate date currency```

Get the rate for a single currency on a specified date.

Ruby: ```ExchangeRate.at(date, base, counter)
CLI: ```exchange_rate calculate date base counter```

Call this method to calculate the exchange rate of a base and counter currency on a specified date, supplying the date, base and counter as args.

This method should accept the same date formats as ```Date.strptime```.


##Rake task/cron job

The gem contains within it a rake task lib/tasks/fetch_exchange_data.rake and a schedule file config/schedule.rb which can be read by the whenever gem to add as a cron job that regularly updates the exchange_data.xml.

If the code is installed as a gem, this theoretically should be possible by unpacking the gem and running ```whenever --update``` in the root dir (though this hasn't been tested)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
