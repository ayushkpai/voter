Rails.application.routes.draw do
  root "votes#index"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :votes, only: [:index, :create]
end
