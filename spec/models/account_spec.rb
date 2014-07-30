require 'spec_helper'

describe Account do

  it "name must be a string" do
  	acc = Account.new("karthik", 23)
  	expect(acc.name).to be_an_instance_of(String)
  end

  it "age must be a fixnum" do
  	acc = Account.new("karthik", 23)
  	expect(acc.age).to be_an_instance_of(Fixnum)
  end
  it "age must not be less than 1" do
  	acc = Account.new("karthik", 24)
  	expect(acc.age).to be >= 1
  end

end
