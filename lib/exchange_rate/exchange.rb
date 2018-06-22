module ExchangeRate
  class Exchange
    def self.calculate_exchange_rate(date, base, counter)
      base_rate = Data.search_currency_by_date(date, base)
      counter_rate = Data.search_currency_by_date(date, counter)
      exchange_rate = base_rate.to_f / counter_rate.to_f
      return exchange_rate.round(4)
    end
  end
end
