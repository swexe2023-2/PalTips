Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  get 'questions/new'
  post 'questions/create'
  get 'questions/edit'
  get 'questions/destroy'
  get 'questions/search'
  
  get 'sessions/index'
  post 'sessions/login'
  get 'sessions/logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  root 'users#new'
end
