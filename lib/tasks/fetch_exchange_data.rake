namespace :exchange_rate_gem do
  desc "fetch and write exchange rate data to file"
  task :fetch_and_write_data do
    ExchangeRate::Data.fetch_and_write
  end
end
