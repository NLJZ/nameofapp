FactoryBot.define do
  factory :comment, class: Comment do
    body "Wow!"
    rating "4"
    user
    product
  end

  factory :bad_comment, class: Comment do
    body "Wow!"
    rating "bad"
    user
    product
  end
end