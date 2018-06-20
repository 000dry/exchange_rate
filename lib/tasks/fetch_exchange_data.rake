namespace :exchange_rate_gem do
  desc "fetch and write exchange rate data"
  task :fetch_and_write do
    ExchangeRate::Data.write_data_from_source
  end
end
