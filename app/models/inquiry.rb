class Inquiry < ActiveRecord::Base

  belongs_to :contacts
  validates :receptiondate, :presence=> true
  validates :ttanto, :presence=> true
  validates :client, :presence=> true
  validates :title, :presence=> true  
  validates :deadline, :presence=> true
  validates :contact, :presence=> true
  validates :youken, :presence=> true
  validates :recontact, :presence=> true
  validates :contact, :length=> (2..8)
  
end
