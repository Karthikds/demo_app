FactoryGirl.define do
	factory :review do
	  reviews Faker::Lorem.paragraph(5)
	  writer Faker::Name.name
	  book_id 1
	end
end