module OandaInstrumentApi
  module Instruments
    attr_reader :instrument

    # GET /instruments/:instrument/candles
    # GET /instruments/EUR_USD/candles
    # client.instrument('EUR_USD').candles(options).show
    def candles(options = {})
      Client.send(http_verb, "#{base_uri}/instruments/#{instrument}/candles", headers: headers, query: options)
    end
  end
end
