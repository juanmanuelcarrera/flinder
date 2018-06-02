class Package
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: Float
  field :flight_code, type: String
  field :hotel_code, type: String
  field :event_code, type: String
  field :max_people, type: Integer

  before_save :fill_data

  def fill_data
    self.price = rand(150..1000)
    self.max_people = rand(4..10)
    self.hotel_code = ('a'..'z').to_a.shuffle[0,8].join
    self.flight_code = rand(10000000..99999999).to_s
  end

  def self.permitted_params
    Package.permitted_params + [:name, :price, :flight_code, :hotel_code, :event_code]
  end

end
