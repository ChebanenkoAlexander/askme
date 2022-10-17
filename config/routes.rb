Rails.application.routes.draw do
  root 'user#index'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get 'show' => 'users#show'
  # Defines the root path route ("/")
  # root "articles#index"
end
