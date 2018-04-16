Rails.application.routes.draw do

  get 'signup' => 'users#new'  
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'welcome/' => 'welcome#index'
  
  root 'welcome#index'
  
  get 'advisory_board' => 'welcome#advisory_board'
  
# PASSENGERS ----------------------

  get 'passengers/' => 'passengers#index'
  
  get 'passengers/travel' => 'passengers#travel'
  
  get 'passengers/faq' => 'passengers#faq'
  
# PILOTS ----------------------

  resources :registrations
  
  get 'pilots' => 'pilots#index'
  
  get 'pilots/form' => 'pilots#form'
  
  get 'aircraft_registration' => 'pilots#form'
  
  get 'pilots/faq' => 'pilots#faq'
  
  get 'pilots/available_missions' => 'missions#index'
  
  resources :missions
  
  get 'pilots/recognition' => 'pilots#recognition'
  
  get 'pilots/mission_control' => 'pilots#mission_control'
  
# DONATE -----------------------

  get 'donate' => 'donate#index'
  
  get 'donors' => 'donate#donors'
  
  get 'pilot_and_owner_recognition' => 'donate#recognition'
  
  get 'corporate_recognition' => 'donate#corporate_recognition'
  
  get 'memorial_wall' => 'donate#memorial_wall'
  get 'memorialDanner'=> 'donate#memorialDanner'
  get 'memorialHanson'=> 'donate#memorialHanson'
  get 'memorialIversen'=> 'donate#memorialIversen'
  get 'memorialLeyda'=> 'donate#memorialLeyda'
  get 'memorialMangan'=> 'donate#memorialMangan'
  get 'memorialMcGovern'=> 'donate#memorialMcGovern'
  get 'memorialMiller'=> 'donate#memorialMiller'
  get 'memorialPetosa'=> 'donate#memorialPetosa'
  get 'memorialPitts'=> 'donate#memorialPitts'
  get 'memorialSalibi'=> 'donate#memorialSalibi'
  
# ------------------------------

  get 'create_profile' => 'welcome#create_profile'
  
# ADMIN ------------------
  get 'admin' => 'admin#index'
  
  get 'admin/users/:page' => 'admin#users', as: "admin_users"
  
  get "admin/email" => "admin#email", as: "admin_email"
  
  post "admin/email" => "admin#send_email", as: "admin_send_email"
  
  delete 'users/:id' => 'users#destroy', as: "delete_user"
    
end
