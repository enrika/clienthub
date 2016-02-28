Rails.application.routes.draw do
  resources :notes
  resources :opportunities

  resources :proposals
end
