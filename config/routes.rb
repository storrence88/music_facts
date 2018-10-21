Rails.application.routes.draw do

  post 'twilio/sms'
  resources :music_facts, only: %i{ index create }

end
