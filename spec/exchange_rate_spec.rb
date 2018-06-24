require 'test_helper'
require 'exchange_rate'

# #Data
# RSpec.describe ExchangeRate::Data do
#   it "should be able to get default source" do
#     result = ExchangeRate::Data.source__get_default
#     expect(result).to eql("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml")
#   end
#
#   it "should be able to set a source" do
#     ExchangeRate::Data.source__set_user("www.some-url.com")
#     expect(ExchangeRate::Data.source__get_user).to eql("www.some-url.com")
#   end
#
#   it "should be able to get default local store" do
#     result = ExchangeRate::Data.local_store__get_default
#     expect(result).to eql("/Users/Shared/Library/exchange_data.xml")
#   end
#
#   it "should be able to set local store path" do
#     ExchangeRate::Data.local_store__set_user("/path/to/file")
#     expect(ExchangeRate::Data.local_store__get_user).to eql("/path/to/file")
#   end
# end

# DATA -- tested with specified date of 2018-06-20
RSpec.describe ExchangeRate::Data do
  it "should return currencies from xml file within specified date" do
    result = ExchangeRate::Data.search_currency_by_date('2018-06-20', 'USD')
    expect(result).to eql("1.1578")
  end
end
