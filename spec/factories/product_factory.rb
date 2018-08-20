FactoryBot.define do
  sequence(:name) { |n| "#{n}" }

  factory :product do
    name
    description "Wow"
    image_url "https://fezzaribikes.files.wordpress.com/2010/11/cascade_fezzari.jpg"
    colour "black"
    price 100.00
  end

end