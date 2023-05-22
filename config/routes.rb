Rails.application.routes.draw do
  resources :riders
  # get 'home/index'
  root to: "home#index"
  get "/photos", to: "photos#index"
  get "/riders", to: "riders#index"
  get "/locations", to: "locations#locations"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
