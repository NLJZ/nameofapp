FactoryBot.define do
  sequence(:email) { |n| "test#{n}@example.com" }

  factory :user do
    email
    password "hellohello"
    first_name "Anthony"
    last_name "Dogman"
    admin false
  end

  factory :adminuser, class: User do
    email "admin@example.com"
    password "hihihihi"
    first_name "Mr"
    last_name "Admin"
    admin true
  end

end