require 'amadeus'
require 'logger'
require 'pp'

module TripsHelper

  def test
    amadeus = Amadeus::Client.new({client_id: 'kmGoFaGL2EAAj9EG8AqFU5T2bgVFxcNy', client_secret: 'qQt5l9YZhAhedwqu'})

    begin
      response = amadeus.reference_data.locations.get(
          keyword: 'LON',
          subType: Amadeus::Location::ANY
      )

      pp response.body #=> The raw response, as a string
      p "---------------"
      p "---------------"
      p "---------------"
      p "---------------"
      p "---------------"
      pp response.result #=> The body parsed as JSON, if the result was parsable
      p "---------------"
      p "---------------"
      p "---------------"
      p "---------------"
      p "---------------"
      pp response.data #=> The list of locations, extracted from the JSON

    rescue Amadeus::ResponseError => error
      puts error
    end
  end


  def flight_offers # origin, destination, departureDate
    amadeus = create_client
    response = amadeus.shopping.flight_offers.get(origin: 'MAD', destination: 'OPO', departureDate: '2018-07-08')
    #amadeus.shopping.flight_offers.get(origin: origin, destination: destination, departureDate: departureDate)
    response.data

  end

  def hotel_offers # origin, destination, departureDate
    amadeus = create_client
    response = amadeus.shopping.hotel_offers.get(cityCode: 'MAD', checkInDate: '2018-07-08')
    #amadeus.shopping.flight_offers.get(origin: origin, destination: destination, departureDate: departureDate)
    response.data

  end



  private

  def create_client
      return Amadeus::Client.new({client_id: 'kmGoFaGL2EAAj9EG8AqFU5T2bgVFxcNy', client_secret: 'qQt5l9YZhAhedwqu'})
  end

end