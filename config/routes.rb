Rails.application.routes.draw do
  get 'users/edit'
  devise_for :users
  resources :posts
  resources :users, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  put "/posts/:id/publish", to: "posts#publish"
  put "/posts/:id/unpublish", to: "posts#unpublish"

end
