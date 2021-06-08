Rails.application.routes.draw do
  root to: "welcome#index"
  resources :welcome, only: [:index]
  resources :users, only: [:new, :show, :edit]
  resources :contacts, only: [:index, :show, :edit, :new]
  get '/login', to: 'users#login'
  get '/signup', to: 'users#create'

  namespace :api do
    namespace :v1 do
      resources :contacts, only: [:create, :update]
      resources :users, only: [:create, :update]
      post '/login', to: 'users#login'
      get '/signup', to: 'users#create'
    end
  end

end
