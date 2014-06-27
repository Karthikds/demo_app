require 'spec_helper'

describe Account do

  it "show the name" do
  	acc = Account.new("karthik", 23)
  	acc.name.should == "karthik"
  end

  it "again show the age of the account" do
  	acc = Account.new("karthik", 23)
  	acc.age.should == 23
  end
end
