require 'test_helper'
require 'exchange_rate'

RSpec.describe ExchangeRate do
  it "should return money" do
    expect(ExchangeRate::Exchange.at).to eql("money!")
  end

#DATA -- tested with specified date of 2018-06-20

  it "should return array of currencies from xml file within specified date" do
    search_result_array = ExchangeRate::Data.search_date_in_file("2018-06-20")
    array_length = search_result_array.length
    expect(array_length).to be > 0
  end

end
