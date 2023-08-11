Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  resources :venues, only: [:index, :new, :create, :show, :edit]
end
