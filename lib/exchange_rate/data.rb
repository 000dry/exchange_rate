require 'open-uri'
require 'nokogiri'
require 'date'

module ExchangeRate
  class Data
    # @source = {user: nil,
    #   default: "http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml"}
    # @local_store = {user: nil,
    #   default: "/Users/Shared/Library/exchange_data.xml"}
    #
    # def self.source__get_user
    #   return @source[:user]
    # end
    #
    # def self.source__get_default
    #   return @source[:default]
    # end
    #
    # def self.source__set_user(url)
    #   return @source[:user] = url
    # end
    #
    # def self.local_store__get_user
    #   return @local_store[:user]
    # end
    #
    # def self.local_store__get_default
    #   return @local_store[:default]
    # end
    #
    # def self.local_store__set_user(path)
    #   @local_store[:user] = path
    # end

    def self.fetch_data
      xml = Nokogiri::XML(open("http://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml"))
      xml.remove_namespaces!
    end

    def self.write_data_to_file(data_xml)
      File.open("/Users/Shared/Library/exchange_data.xml", "w") {|f| f.write(data_xml) }
    end

    def self.fetch_and_write
      xml = self.fetch_data
      self.write_data_to_file(xml)
    end

    def self.read_exchange_data
      Nokogiri::XML(File.read("/Users/Shared/Library/exchange_data.xml"))
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
