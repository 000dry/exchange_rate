require 'test_helper'
require 'exchange_rate'

# DATA -- tested with specified date of 2018-06-20
 RSpec.describe ExchangeRate::Data do
  it "should return currencies from xml file within specified date" do
    result = ExchangeRate::Data.search_currency_by_date('2018-06-20', 'USD')
    expect(result).to eql("1.1578")
  end

end
