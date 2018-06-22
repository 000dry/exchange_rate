require './data'

module ExchangeRate
  class Exchange
    def self.calculate_exchange_rate(date, base, counter)
      base_crncy = Data.search_currency_by_date(date, base)
      counter_crncy = Data.search_currency_by_date(date, counter)
      puts base_crncy
      puts counter_crncy

    end
  end
end
