Rails.application.routes.draw do
  devise_for :users, controllers: {    
    sessions: 'users/sessions',    
    registrations: 'users/registrations'    
  }  
  root to: "contacts#index"
  resources :welcome, only: [:index]
  resources :users, only: [:new, :show, :edit]
  resources :contacts, only: [:index, :show, :edit, :new]
  resources :reports, only: [:index]
  resources :favorites, only: [:index]
  get '/reports', to: 'reports#index'
  get '/login', to: 'users#login'
  get '/signup', to: 'users#create'
  get '/favorites', to: 'favorites#index'

  namespace :api do
    namespace :v1 do
      resources :favorites, only: [:create]
      resources :contacts, only: [:create, :update, :index]
      resources :users, only: [:create, :update]
      post '/login', to: 'users#login'
      get '/signup', to: 'users#create'

    end
  end
end
