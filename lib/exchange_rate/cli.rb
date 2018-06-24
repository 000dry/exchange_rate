require 'thor'
require 'exchange_rate'

module ExchangeRate
  class CLI < Thor
    desc "data", "Pulls data from an online source and writes to a local file"
    def data
      ExchangeRate::Data.fetch_and_write
      puts "The exchange rates have been fetched and stored locally"
    end

    desc "rate DATE CURRENCY", "Retrieves the rate of a single currency on a
    specified date"
    def rate(date, currency)
      rate = ExchangeRate.rate(date, currency)
      puts = "#{date}, #{currency}: #{rate}"
    end

    desc "calculate DATE BASE COUNTER",
    "Calculates the exchange rates of two given currencies on a specified date"
    def calculate(date, base, counter)
      rate = ExchangeRate.at(date, base, counter)
      puts "Exchange rate for #{base} / #{counter} #{date}: #{rate}"
    end
  end
end
