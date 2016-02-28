Rails.application.routes.draw do
  
  root "opportunities#index"
  resources :opportunities do
  	resources :notes
end
  resources :proposals
end
