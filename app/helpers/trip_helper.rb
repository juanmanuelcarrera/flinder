module TripHelper
  require 'amadeus'
  require 'logger'

  def test
    amadeus = Amadeus::Client.new({
                                      client_id: 'kmGoFaGL2EAAj9EG8AqFU5T2bgVFxcNy',
                                      client_secret: 'pGZmQr0A5daBu8KCBZNLWRVkMqen',
                                      logger: Logger.new(STDOUT)
                                  })

    begin
      response = amadeus.reference_data.locations.get(
          keyword: 'LON',
          subType: Amadeus::Location::ANY
      )

      p reponse.body #=> The raw response, as a string
      p reponse.result #=> The body parsed as JSON, if the result was parsable
      p response.data #=> The list of locations, extracted from the JSON

    rescue Amadeus::ResponseError => error
      puts error
    end
  end
end