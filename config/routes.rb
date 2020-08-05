Rails.application.routes.draw do
  get 'sessions/new'
  resources :mains
 
  root 'welcome#index'
  get 'welcomes/howto'
  
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  
end