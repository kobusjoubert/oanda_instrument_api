require 'json'
require 'httparty'
require 'persistent_httparty'
require 'http/exceptions'

require 'oanda_instrument_api/version'
require 'oanda_instrument_api/exceptions'
require 'oanda_instrument_api/instruments'
require 'oanda_instrument_api/client'
require 'oanda_instrument_api/api'
require 'oanda_instrument_api/oanda_instrument_api'

Bundler.require(*[:default, ENV['APP_ENV'], ENV['RAILS_ENV']].compact)
