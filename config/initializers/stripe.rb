if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_EDBpU2gye445BixE48udPYU7',
    secret_key: 'sk_test_399shN3jU6wLknzJGNLi0oWh'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]