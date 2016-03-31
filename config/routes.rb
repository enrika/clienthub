Rails.application.routes.draw do
  
  resources :projects  
     

   resources :web_plans
   resources :media_plans
   resources :marketing_plans
   resources :upkeep_plans
   resources :research_plans
   
   resources :styleguides


  resources :brand_stories
  resources :tutorials
  resources :budgets
  resources :expenses

  resources :invoices
  resources :line_items

  resources :pre_project_assessments
  resources :buttons
  resources :type_faces
  
  
  resources :tasks
  
  resources :seo_traffic_reports
  resources :content_reports
  resources :email_reports
  resources :social_media_reports
  resources :reports
  resources :schedules
  resources :subsciption_plans
  resources :responsible_team_members
  resources :steps
  
  
  resources :channels
  
  resources :brands
  resources :videos
  
  
  
  
  resources :team_members
  resources :locations
  resources :shots
  resources :shotlists
  resources :scripts
  
  resources :events
  resources :credentials
 
  resources :images
  resources :competitors
  resources :research_tools
  
  resources :personas
  
  
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
