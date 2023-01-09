Rails.application.routes.draw do
  resources :new_movies
  resources :movies
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 # root "application#index"
   root "pages#home"
   get "aboutus", to: "pages#about"
   get "destination", to: "pages#destination"
end
