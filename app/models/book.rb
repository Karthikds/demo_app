class Book < ActiveRecord::Base
  attr_accessible :author, :critics, :genre, :price, :title, :page_count, :publisher_id

  validates :author, :critics, :genre, :price, :title, :page_count, presence: true
  has_many :reviews

  enum_attr :page_count, ["<150", "<500", "<1000", "1000+"]

  def if_reviewed
  	reviews.present? ? true : false
  end
end
