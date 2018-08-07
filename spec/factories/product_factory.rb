FactoryBot.define do
  sequence(:name) { |n| "#{n}" }

  factory :product do
    name
    description "Wow"
    image_url "http://www.google.com"
    colour "black"
    price 100
  end

end