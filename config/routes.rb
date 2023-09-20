Rails.application.routes.draw do
  #get 'candidate/index'
  resources :joboffers

  devise_for :users

  resources :candidates
  resources :reactions
  
  resources :admin, only:[:index, :create, :update]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  post'/reactions',  to:  'reactions#user_reaction',  as: 'user_reaction'
end
