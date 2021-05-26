Rails.application.routes.draw do
  resources :welcome, only [:index]
  resources :user, only [:new, :show, :edit]
  resources :contact, only [:index, :show, :edit]
end
