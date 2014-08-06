class Book < ActiveRecord::Base
  attr_accessible :author, :critics, :genre, :price, :title, :page_count, :publisher_id, :reviews

  validates :author, :critics, :genre, :price, :title, :page_count, presence: true
  has_many :reviews
  accepts_nested_attributes_for :reviews, allow_destroy: true

  enum_attr :page_count, %w(<150 <500 <1000 1000+)

  def if_reviewed?
  	reviews.present? ? true : false
  end
end
