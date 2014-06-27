class BooksController < ApplicationController
  before_filter :authenticate_user!

  def new
  	@book = Book.new
  end

  def create
  	@book = Book.new(params[:book])
  	if @book.valid?
      @book.save! 
      redirect_to books_path
    else
      render :new
    end
  end

  def index
  	@books = Book.all
  end

  def show
  	@book = Book.where(id: params[:id]).first
  end
  
  
  
end

