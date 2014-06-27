class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :reviews, :writer

  validates :reviews, :writer, presence: true
  
end
