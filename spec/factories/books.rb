require 'faker'
I18n.reload!

FactoryGirl.define do
  factory :book do |f|
    f.author Faker::Name.name
  	f.critics Faker::Lorem.sentence
  	f.genre Faker::Lorem.word
  	f.price Faker::Number.number(3)
  	f.title Faker::Lorem.sentence
  	f.page_count %w(<150 <500 <1000 1000+).sample
  	f.publisher_id 1 
  end
end