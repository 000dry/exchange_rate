every :day, at: '11.26am' do
  rake 'exchange_rate_gem:fetch_and_write'
end
