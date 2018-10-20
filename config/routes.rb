Rails.application.routes.draw do

  resources :music_facts, only: %i{ index create }

end
