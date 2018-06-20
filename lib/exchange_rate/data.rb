require 'open-uri'
require 'nokogiri'

module ExchangeRate
  class Data
    def self.write_data_from_source
      data_xml = Nokogiri::XML(open("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml"))
      File.open("../../../.exchange_data.xml", "w") {|f| f.write(data_xml) }
    end
  end
end
