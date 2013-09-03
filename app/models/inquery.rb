class Inquery < ActiveRecord::Base
  attr_accessible :client, :contact, :memo, :receptiondate, :deadline, :title
end
