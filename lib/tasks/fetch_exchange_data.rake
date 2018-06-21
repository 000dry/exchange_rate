namespace :exchange_rate_gem do
  desc "fetch and write exchange rate data"
  task :fetch_and_write do
    data_xml = ExchangeRate::Data.fetch_data
    ExchangeRate::Data.write_data(data_xml)
  end
end
