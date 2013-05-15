# == Schema Information
#
# Table name: drivers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  street1    :string(255)
#  street2    :string(255)
#  city       :string(255)
#  zip        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Driver < ActiveRecord::Base
  attr_accessible :name, :email, :street1, :street2, :city, :zip
  
  def start_time
      created_at
    end
end
