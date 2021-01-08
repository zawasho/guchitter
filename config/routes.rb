Rails.application.routes.draw do
  
  devise_for :users
  
  root to: 'homes#top'
    get 'good_things/new'
    get 'good_things/create'
    get 'good_things/index'
    get 'good_things/show'
    get 'good_things/edit'
    get 'good_things/destroy'
    get 'complaints/new'
    get 'complaints/create'
    get 'complaints/index'
    get 'complaints/show'
    get 'complaints/edit'
    get 'complaints/destroy'
    get 'homes/top'
    get 'homes/about'
 
 resources :users
 resources :complaints
 resources :good_things
  collection do
     get 'thanks'
   end
 resources :cheers
 resources :favorites
end
