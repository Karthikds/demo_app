ActiveAdmin.register Publisher do
menu priority: 3
  
	
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Book" do
      f.input :name
      f.input :estd,  :as => :date_picker
    end
  end


end
