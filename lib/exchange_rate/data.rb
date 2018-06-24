require 'open-uri'
require 'nokogiri'
require 'date'

module ExchangeRate
  class Data
    def dir
      home = Dir.home
      File.join(home, ".ssh")
    end
    def self.fetch_data
      xml = Nokogiri::XML(open("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml"))
      xml.remove_namespaces!
    end

    def self.write_data_to_file(data_xml)
      File.open(dir, "w") {|f| f.write(data_xml) }
    end

    def self.fetch_and_write
      xml = self.fetch_data
      self.write_data_to_file(xml)
    end

    def self.read_exchange_data
      Nokogiri::XML(File.read(dir))
    end

    def self.search_currency_by_date(date, currency)
      safe_date = Date.strptime(date).to_s
      xml = self.read_exchange_data
      rate = xml.xpath("//Cube[@time='" + safe_date + "']
        //Cube[@currency='" + currency + "']/@rate")
      return rate.to_s
    end
  end
end
