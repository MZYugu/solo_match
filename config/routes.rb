Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :venues, only: [:index, :new, :create, :show, :edit] do
    resources :events,only: [:index, :new, :edit]
  end
end