require 'spec_helper'

describe Book do
  it "has an author" do
  	book = Book.new(author: "tester")
  	expect(book.author).to be_present
  end

  it "must have an author" do
  	book = Book.new
  	expect(book.author).to be_present
  end


end
