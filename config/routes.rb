Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  root 'user#index'
  resources :users
  resources :questions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get 'show' => 'users#show'
  # Defines the root path route ("/")
  # root "articles#index"
end
