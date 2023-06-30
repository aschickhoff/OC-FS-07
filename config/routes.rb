Rails.application.routes.draw do
  resources :riders
  resources :submissions, only: [:new, :create]

  root to: "home#index"

  get "/photos", to: "photos#index"
  get "/riders", to: "riders#index"
  get "/locations", to: "locations#locations"
end

