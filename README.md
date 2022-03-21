# OandaInstrumentApi

Ruby client that supports the [Oanda Instrument API](https://github.com/kobusjoubert/oanda_instrument) methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'oanda_instrument_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install oanda_instrument_api

## Usage

Add the following to your ruby program:

    require 'oanda_instrument_api'

Initialise a client:

    client = OandaInstrumentApi.new(email: 'me@somewhere.com', authentication_token: 'my_authentication_token')

If you would like to use the staging service, default is production:

    client = OandaInstrumentApi.new(email: 'me@somewhere.com', authentication_token: 'my_authentication_token', environment: 'staging')

If you need your requests to go through a proxy:

    client = OandaInstrumentApi.new(email: 'me@somewhere.com', authentication_token: 'my_authentication_token', proxy_url: 'https://user:pass@proxy.com:80')

You can adjust the persistend connection pool size, the default is 256:

    client = OandaInstrumentApi.new(email: 'me@somewhere.com', authentication_token: 'my_authentication_token', connection_pool_size: 10)

You can adjust the number of requests per second allowed to OandaInstrument API, the default is 100:

    client = OandaInstrumentApi.new(email: 'me@somewhere.com', authentication_token: 'my_authentication_token', max_requests_per_second: 10)

## Examples

### Instruments

```ruby
options = { count: 10 }

client.instrument('EUR_USD').candles(options).show
```

## Responses

All API responses will be returned with the following JSON structure:

```json
{
  "data": {
    "type": "candle",
    "id": "0",
    "attributes": {
      "instrument": "EUR_USD",
      "granularity": "M1",
      "candles": [{
        "complete": true,
        "time": "2017-01-01T02:00:00.000000000Z",
        "volume": 10,
        "mid": {
          "o": "4.572",
          "h": "4.572",
          "l": "4.571",
          "c": "4.571"
        }
      }, {
        "complete": true,
        "...": "..."
      }]
    }
  }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [github.com](https://github.com).

## Exceptions

A `OandaInstrumentApi::RequestError` will be raised when a request to the Oanda Instrument API failed for any reason.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kobusjoubert/oanda_instrument_api.
