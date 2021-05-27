Rails.application.routes.draw do
  root to: "welcome#index"
  resources :welcome, only: [:index]
  resources :user, only: [:new, :show, :edit]
  resources :contact, only: [:index, :show, :edit]

  namespace :api do
    namespace :v1 do
      resources :contacts, only: [:create, :update]
      resources :users, only: [:create, :update]
    end
  end

end
