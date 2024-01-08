Rails.application.routes.draw do 
  devise_for :users
  
  get 'pages/index'
  get 'registration/new'
  root 'carworlds#index'
 
  resources :carworlds

end
