every :day, at: '12pm' do
  rake 'exchange_rate_gem:fetch_and_write'
end
