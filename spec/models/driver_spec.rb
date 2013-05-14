require File.dirname(__FILE__) + '/../spec_helper'

describe Driver do
  it "should be valid" do
    Driver.new.should be_valid
  end
end
