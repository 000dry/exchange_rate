require 'open-uri'
require 'nokogiri'

module ExchangeRate
  class Data
    def self.fetch_data
      Nokogiri::XML(open("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml"))
    end
    def self.write_data(data_xml)
      File.open("../../../exchange_data.xml", "w") {|f| f.write(data_xml) }
    end
  end
end
