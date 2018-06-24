require 'test_helper'
require 'exchange_rate'

# DATA -- tested with specified date of 2018-06-20
RSpec.describe ExchangeRate::Data do
  it "should return currencies from xml file within specified date" do
    result = ExchangeRate::Data.search_currency_by_date('2018-06-20', 'USD')
    expect(result).to eql("1.1578")
  end
end

RSpec.describe ExchangeRate::Exchange do
  it "should be able to calculate exchange rates from a base and a counter on a specified date" do
    result = ExchangeRate::Exchange.calculate_exchange_rate('2018-06-20', 'USD', 'JPY')
    expect(result).to eql(0.0091)
  end
end

RSpec.describe ExchangeRate do
  it "should be able to get a currency's rate on a specified date" do
    result = ExchangeRate.rate('2018-06-20', 'USD')
    expect(result).to eql("1.1578")
  end
  it "should be able to calculate exchange rates from a base and a counter on a specified date" do
    result = ExchangeRate.at('2018-06-20', 'USD', 'JPY')
    expect(result).to eql(0.0091)
  end
end
