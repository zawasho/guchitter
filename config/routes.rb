Rails.application.routes.draw do
  
  devise_for :users
 
 resources :complaints
 resources :good_things
 resources :cheers
 resources :favorites
end
