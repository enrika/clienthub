Rails.application.routes.draw do
  
  resources :brands

  resources :invoices
  resources :line_items

  resources :pre_project_assessments

  resources :projects  do
    resources :tasks
  end
     
   
   resources :research_plans
   resources :competitors
   resources :research_tools
   resources :brand_stories
   resources :personas

   resources :web_plans
   resources :styleguides
   resources :buttons
   resources :type_faces

   resources :media_plans
   resources :shots
   resources :shotlists
   resources :scripts

   resources :marketing_plans
   resources :channels
   resources :schedules
  

   resources :upkeep_plans
   resources :tutorials
   resources :steps
   resources :responsible_team_members
  

   resources :budgets
   resources :expenses

  
  
  resources :seo_traffic_reports
  resources :content_reports
  resources :email_reports
  resources :social_media_reports
  resources :reports
  resources :subsciption_plans
  
  
  
  resources :videos
  resources :images
  
  resources :team_members
  resources :locations
  
  
  resources :events
  resources :credentials
 
  
  
  
  
  
  
  
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
