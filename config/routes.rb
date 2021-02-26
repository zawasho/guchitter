Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get '/about' => 'homes#about'

  resources :users do
    member do
      get '/page' => 'users#page'
    end
  end

  resources :complaints do
    collection do
      get '/thanks' => 'complaints#thanks'
      get '/room' => 'complaints#room'
    end
  end

  resources :good_things do
    collection do
      get '/thanks' => 'good_things#thanks'
      get '/space' => 'good_things#space'
    end
  end

  resources :cheers, only: %i(create destroy)

  resources :favorites, only: %i(create destroy)
end
