desc 'fetch and write exchange rate data'
task fetch_and_write: :environment do
  ExchangeRate::Data.write_data_from_source
end
