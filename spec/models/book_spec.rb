require 'spec_helper'

describe Book do
# before (:each) {@book = Fabricate(:book)}

  it "must have all the attributes" do
    # expect(Factory.create(:book)).to be_valid


  	# expect(@book).to be_valid
  end

# # check for the raised exception
#   it "must have all the attributes" do
#   	expect{@book.save!}.not_to raise_error()
#   end

#   it "must have all the attributes" do
#   	book = Book.new
#   	expect{book.save!}.to raise_error(ActiveRecord::RecordInvalid)
#   end
# # -------

#   it "'s author should be String" do
# 	expect(@book.author).to be_an_instance_of(String)
#   end

#   it "are reviewed?" do
#   	review1 = Review.new(reviews: "dwa", writer: "DSK", book_id: "1")
#   	review2 = Review.new(reviews: "abc", writer: "DRS", book_id: "1")
#   	expect(@book).to satisfy{|b| b.if_reviewed?}
#   end


# # check for associations
#   it "can have many reviews" do 
#   	review1 = Review.new(reviews: "dwa", writer: "DSK", book_id: "1")
#   	review2 = Review.new(reviews: "abc", writer: "DRS", book_id: "1")
#   	book = Book.new(author: "DSK", critics: "this is a test book", genre: "test", price: 200, title: "The Rspec test boon", page_count: "<500", reviews: [review1, review2])
#   end

end  