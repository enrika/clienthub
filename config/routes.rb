Rails.application.routes.draw do
  
  
  
  root "opportunities#index"
  resources :opportunities do
  	resources :notes
  	resources :actions
end
  resources :proposals
end
