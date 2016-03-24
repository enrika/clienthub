Rails.application.routes.draw do
  
  resource :session

 get 'signup', :to =>'users#new'
  
  resources :users
  root "sessions#new"
  resources :opportunities do
  	resources :notes
  	resources :actions
end
  resources :proposals
end
