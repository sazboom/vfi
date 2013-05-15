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

require File.dirname(__FILE__) + '/../spec_helper'

describe Driver do
  it "should be valid" do
    Driver.new.should be_valid
  end
end
