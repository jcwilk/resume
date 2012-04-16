#credit to https://github.com/daddz/sinatra-rspec-bundler-template/blob/master/spec/spec_helper.rb for a lot of this
ENV['RACK_ENV'] = "test"

require File.join(File.dirname(__FILE__), '..', 'environment.rb')

Webrat.configure do |conf|
  conf.mode = :rack
end

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include Webrat::Methods
  conf.include Webrat::Matchers
end
