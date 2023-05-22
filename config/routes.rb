Rails.application.routes.draw do
  # get 'home/index'
  root to: "home#index"
  get "/photos", to: "photos#photos"
  get "/riders", to: "riders#riders"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
