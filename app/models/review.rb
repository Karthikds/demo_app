class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :reviews, :writer, :book_id

  validates :reviews, :writer, presence: true
  
end
