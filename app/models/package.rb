class Package
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :price, type: Float
  field :flight_code, type: String
  field :hotel_code, type: String
  field :event_code, type: String


  def self.permitted_params
    Package.permitted_params + [:name, :price, :flight_code, :hotel_code, :event_code]
  end

end
