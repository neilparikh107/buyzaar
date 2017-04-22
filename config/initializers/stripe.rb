Rails.configuration.stripe = {
  :publishable_key => Rails.application.secrets.stripe_pk,
  :secret_key      => Rails.application.secrets.stripe_api_key
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
