FactoryBot.define do
  sequence(:email) { |n| "test#{n}@example.com" }

  factory :user do
    email
    password "hellohello"
    first_name "Anthony"
    last_name "Dogman"
    admin false
  end

end