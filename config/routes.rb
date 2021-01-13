Rails.application.routes.draw do

  devise_for :users

  root to: 'homes#top'
  get '/about' => 'homes#about'


 resources :complaints do
  collection do
    get '/thanks' => 'complaints#thanks'
  end
end

 resources :good_things do
  collection do
    get '/thanks' => 'good_things#thanks'
   end
 end

 resources :cheers, only: [:create, :destroy]
 resources :favorites, only: [:create, :destroy]
 end
