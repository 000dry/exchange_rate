require "bundler/gem_tasks"
require "rake/testtask"
require "./lib/exchange_rate.rb"
import './lib/tasks/fetch_exchange_data.rake'

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :test
