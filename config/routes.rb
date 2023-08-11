Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :venues, only: [:index, :new, :create, :show, :edit]
  resources :events, only: [:index, :new, :create, :show, :edit]
end