Rails.application.routes.draw do
  get 'sessions/new'
  resources :mains
 
  root 'welcome#index'
  get 'welcomes/howto'
  
  resources :users
  
   delete '/logout', to: 'sessions#destroy'
  
end