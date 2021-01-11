Rails.application.routes.draw do
  
  devise_for :users
  
  root to: 'homes#top'
  get '/about' => 'homes#about'
 
 
 resources :complaints do
  collection do
    get :thanks
  end
end

 resources :good_things do
  collection do
    get :thanks
   end
 end
   
 resources :cheers
 resources :favorites
 end
