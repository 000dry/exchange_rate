require 'open-uri'
require 'nokogiri'

module ExchangeRate
  class Data
    def self.fetch_data
      xml = Nokogiri::XML(open("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml"))
      xml.remove_namespaces!
    end
    def self.write_data_to_file(data_xml)
      File.open("../exchange_data.xml", "w") {|f| f.write(data_xml) }
    end
    def self.fetch_and_write
      data_xml = self.fetch_data
      self.write_data_to_file(data_xml)
    end
    def self.read_exchange_data
      Nokogiri::XML(File.read("../../../exchange_data.xml"))
    end
    def self.search_date_in_file
      file = Data.read_exchange_data
      puts "test"
      xml_to_text = file.xpath("//Cube").to_s
      puts xml_to_text
    end
  end
end
