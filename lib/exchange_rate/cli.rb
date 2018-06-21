require 'thor'
require 'exchange_rate'

module ExchangeRate
  class CLI < Thor
    desc "data", "Pulls data from an online source and writes to a local file"
    def data
      ExchangeRate::Data.fetch_and_write
      print "The exchange rates have been fetched and stored locally"
    end
  end
end
