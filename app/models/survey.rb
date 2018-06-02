class Survey
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :value, type: Integer


  def self.permitted_params
    Survey.permitted_params + [:name, :description, :value]
  end

end
