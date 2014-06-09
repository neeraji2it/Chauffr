class Contact < ActiveRecord::Base
  belongs_to :user
  
  validates :mobile, :company_name, :presence => true
end
