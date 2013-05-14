class Driver < ActiveRecord::Base
  attr_accessible :name, :email, :street1, :street2, :city, :zip
end
