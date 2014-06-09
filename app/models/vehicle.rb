class Vehicle < ActiveRecord::Base
  validates :vehicle_type,:min_fare,:first_fare,:after_first_fare, presence: true
end
