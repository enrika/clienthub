Rails.application.routes.draw do
  
  resources :actions
  resources :needs
  root "opportunities#index"
  resources :opportunities do
  	resources :notes
end
  resources :proposals
end
