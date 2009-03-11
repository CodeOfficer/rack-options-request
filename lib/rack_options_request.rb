# $:.unshift File.dirname(__FILE__)

# require File.join(File.dirname(__FILE__), *%w[rack options request])

begin
  require 'rack'
rescue LoadError
  raise "rack is required for rack-options-request, try: gem install rack"
end

# require 'rack/options/request'
# ActionController::Dispatcher.middleware.use Rack::Options::Request