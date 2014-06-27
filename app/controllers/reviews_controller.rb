class ReviewsController < ApplicationController
  before_filter :authenticate_user!

  def new
  	@book = Book.find(params[:id])
  	@review = @book.reviews.build
  end

  def create
  	raise params.inspect
  	@review = Review.new(params[:review])
  	if @review.valid?
  		@review.save!
  		redirect_to books_path
  	else
  		render :new
  	end
  end

  

end
