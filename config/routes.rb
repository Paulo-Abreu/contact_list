Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  resources :welcome, only: [:index]
  resources :users, only: [:new, :show, :edit]
  resources :contacts, only: [:index, :show, :edit, :new]
  resources :reports, only: [:index]
  get '/reports', to: 'reports#index'
  get '/login', to: 'users#login'
  get '/signup', to: 'users#create'

  namespace :api do
    namespace :v1 do
      resources :contacts, only: [:create, :update, :index]
      resources :users, only: [:create, :update]
      post '/login', to: 'users#login'
      get '/signup', to: 'users#create'
    end
  end
end
