ActiveAdmin.register Book do
  menu priority: 2

  controller do
  	def destroy
		book = Book.where(id: params[:id]).first
  		if book.if_reviewed?
  			redirect_to :back, alert: "This book has reviews . Delete the reviews first."
  		else
  		  super
  		end
  	end
  end 

  form do |f|
    f.inputs "Book" do
      f.input :title
      f.input :author
      f.input :price
      f.input :genre
      f.input :critics
  	  f.input :page_count,  as: :select, collection: ["<150", "<500", "<1000", "1000+"]
  	  f.input :publisher_id, as: :select, collection: Publisher.all
    end
  end
    
end