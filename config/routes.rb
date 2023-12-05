Rails.application.routes.draw do
  # Root route
  root "api/greetings#random_greeting"

  # API namespace
  namespace :api do
    get 'random_greeting', to: 'greetings#random_greeting'
  end
end
