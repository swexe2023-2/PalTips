Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'grades/index'
  get 'subjects/index'
  
  resources :questions
  get 'questions/search'
  
  get 'sessions/index'
  post 'sessions/login'
  get 'sessions/logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  root 'users#new'
  #root 'questions#new'
end
