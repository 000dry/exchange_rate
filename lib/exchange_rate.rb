require 'exchange_rate/version'
require 'exchange_rate/exchange'
require 'exchange_rate/data'


module ExchangeRate
  def self.fetch
    Data.fetch_and_write
  end

  def self.rate(date, currency)
    return Data.search_currency_by_date
  end

  def self.at(date, base, counter)
    return Exchange.calculate_exchange_rate(date, base, counter)
  end
end
