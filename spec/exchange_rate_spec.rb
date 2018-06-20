require 'test_helper'
require 'exchange_rate'

RSpec.describe ExchangeRate::Exchange do
  it "should return money" do
    expect(ExchangeRate::Exchange.at).to eql("money!")
  end

end
