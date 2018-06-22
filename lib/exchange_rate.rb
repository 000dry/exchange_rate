require 'exchange_rate/version'
require 'exchange_rate/exchange'
require 'exchange_rate/data'

module ExchangeRate
  def self.at(date, base, counter)
    result = Exchange.calculate_exchange_rate(date, base, counter)
  end
end
