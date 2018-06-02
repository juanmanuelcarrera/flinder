class Package
  include Mongoid::Document

  field :name, type: String
  field :price, type: Float
  field :flight_code, type: String
  field :hotel_code, type: String

end
