class AdditionalCharge < ActiveRecord::Base
  validates :charge_name, :surcharge, :presence => true
end